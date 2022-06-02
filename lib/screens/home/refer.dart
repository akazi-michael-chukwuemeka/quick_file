import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/widget.dart';

class Refer extends StatelessWidget {
  const Refer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: const CustomCloseButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
        child: Center(
          child: SizedBox(
            width: 400,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // LOGO IMAGE //
              SizedBox(
                  child: Image.asset('assets/logo.jpg',
                      height: 200, width: 200, fit: BoxFit.cover)),
              const SizedBox(height: defaultPadding * 6),
              const CustomText(
                text: 'Does your friend also want to file ITR?',
                size: 18,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: defaultPadding),
              const CustomText(
                  text:
                      'Refer your friend, fill the form below and earn 20% of the fees paid by him',
                  color: Colors.red,
                  size: 18,
                  textAlign: TextAlign.center),
              const SizedBox(height: defaultPadding * 6),
              CustomButton(
                  buttonColor: primaryColor,
                  borderColor: primaryColor,
                  titleColor: white,
                  title: 'Fill the form',
                  height: 60,
                  width: Get.width,
                  onTap: () =>
                      appController.launchInAppWebView(Uri.parse(referUrl))),
            ]),
          ),
        ),
      ),
    );
  }
}
