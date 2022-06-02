import 'package:quick_file/controllers/app_controller.dart';
import 'package:quick_file/controllers/auth_controller.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

AuthController authController = AuthController.instance;
AppController appController = AppController.instance;

final Future<FirebaseApp> initialization = Firebase.initializeApp();
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseMessaging fcm = FirebaseMessaging.instance;
