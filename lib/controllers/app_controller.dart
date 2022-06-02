import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AppController extends GetxController {
  static AppController instance = Get.find();
  bool? hasCallSupport = false;
  Future<void>? launched;
  String? phone = '';

  @override
  void onInit() {
    super.onInit();
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      hasCallSupport = result;
    });
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> sendSms(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'sms',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> sendEmail(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(launchUri);
  }

  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchInAppWebView(Uri url) async {
    if (!await launchUrl(url,
        mode: LaunchMode.inAppWebView,
        webViewConfiguration: const WebViewConfiguration(
            headers: <String, String>{'my_header_key': 'my_header_value'}))) {
      throw 'Could not launch $url';
    }
  }
}
