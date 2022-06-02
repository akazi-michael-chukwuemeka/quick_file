import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset('assets/logo.jpg',
                        height: Get.height,
                        width: Get.width,
                        fit: BoxFit.cover)),
                const SizedBox(height: defaultPadding * 6),
                customGoogleButton(
                    title: 'Sign in with Google',
                    icon: FontAwesomeIcons.google,
                    onTap: () async => authController.signInWithGoogle()),
              ],
            ),
          ),
        ));
  }

  Widget customGoogleButton(
      {String? title, IconData? icon, Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: white,
            border: Border.all(color: primaryColor, width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: title, color: primaryColor, size: 18),
            const SizedBox(width: defaultPadding / 2),
            Icon(icon, color: primaryColor, size: 23),
          ],
        ),
      ),
    );
  }
}
