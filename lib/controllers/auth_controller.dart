import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_file/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/widget.dart';
import '../screens/auth/sign_in.dart';
import '../screens/home/index.dart';
import '../widgets/showLoading.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  String collection = "users";
  late Rx<User?> firebaseUser;

  Rx<UserModel> userModel = UserModel().obs;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  var callingCode = ''.obs;

  @override
  void onClose() {
    _clearControllers();
    super.onClose();
  }

  @override
  void onReady() async {
    super.onReady();
    firebaseUser = Rx<User>(auth.currentUser!);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  @override
  void onInit() async {
    super.onInit();
    getTokens();

    var initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
      RemoteNotification notification = message!.notification!;
      AndroidNotification? android = message.notification?.android!;
      // ignore: unnecessary_null_comparison
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            const NotificationDetails(
              android: AndroidNotificationDetails(
                'high_importance_channel',
                'High Importance Notifications',
                channelDescription:
                    'This channel is used for important notifications',
                importance: Importance.high,
                icon: "@mipmap/ic_launcher",
              ),
            ));
      }
    });
  }

  Stream<UserModel> listenToUser() => firebaseFirestore
      .collection(collection)
      .doc(firebaseUser.value!.uid)
      .snapshots()
      .map((snapshot) => UserModel.fromSnapshot(snapshot));

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const SignIn());
    } else {
      userModel.bindStream(listenToUser());
      Get.offAll(() => const Index());
    }
  }

  void signInWithGoogle() async {
    showLoading(title: 'Connecting');

    try {
      await _googleSignIn.signOut();
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await auth.signInWithCredential(credential).then((result) async {
        firebaseUser = Rx<User>(auth.currentUser!);
        final QuerySnapshot result = await firebaseFirestore
            .collection(collection)
            .where("id", isEqualTo: firebaseUser.value!.uid)
            .get();
        final List<DocumentSnapshot> documents = result.docs;

        if (documents.isEmpty) {
          firebaseFirestore
              .collection(collection)
              .doc(firebaseUser.value!.uid)
              .set({
            "uid": firebaseUser.value!.uid,
            "username": firebaseUser.value!.displayName,
            "photoUrl": firebaseUser.value!.photoURL,
            "email": firebaseUser.value!.email,
          });
        }
        Get.back();
      });
    } catch (e) {
      Get.back();
      debugPrint(e.toString());
      displayDialogMessage(message: 'Could not log in');
    }
  }

  void signOut() async {
    auth.signOut();
  }

  getTokens() async {
    String? token = await FirebaseMessaging.instance.getToken();
    print(token);
  }

  _clearControllers() {}

  displayDialogMessage({String? message}) {
    Get.defaultDialog(
        barrierDismissible: false,
        contentPadding: const EdgeInsets.only(
            left: defaultPadding * 2,
            bottom: defaultPadding * 4,
            right: defaultPadding * 2),
        title: '',
        content: Column(
          children: [
            const CustomCloseButton(),
            const SizedBox(height: defaultPadding * 2),
            Text(message!),
          ],
        ),
        actions: [
          CustomButton(
              borderColor: primaryColor,
              titleColor: primaryColor,
              title: 'ok',
              width: 80,
              height: 50,
              onTap: () => Get.back()),
          const SizedBox(width: defaultPadding),
        ]);
  }
}
