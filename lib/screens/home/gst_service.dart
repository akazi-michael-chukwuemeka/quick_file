import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_file/screens/home/gst_registration.dart';
import 'package:quick_file/screens/home/gst_return_above_five.dart';
import 'package:quick_file/screens/home/gst_return_upto_five.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/widget.dart';

class GstServices extends StatelessWidget {
  const GstServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: const CustomCloseButton(),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
            ),
            const SizedBox(height: defaultPadding * 2),
            const CustomText(
              text: 'Choose your GST',
              size: 23,
            ),
            const SizedBox(height: defaultPadding * 4),
            CustomButton(
                title: 'GST Registration',
                buttonColor: primaryColor,
                height: 70,
                borderColor: primaryColor,
                fontSize: 18,
                titleColor: white,
                width: 360,
                onTap: () => Get.to(const GstRegistration())),
            const SizedBox(height: defaultPadding * 2),
            CustomButton(
                title: 'GST Return Filings (Annual turn over upto 5 crores)',
                buttonColor: primaryColor,
                titleColor: white,
                height: 70,
                borderColor: primaryColor,
                fontSize: 18,
                width: 360,
                onTap: () => Get.to(const GstReturnUptoFive())),
            const SizedBox(height: defaultPadding * 2),
            CustomButton(
                title: 'GST Return Filings (Annual turn over above 5 crores)',
                buttonColor: primaryColor,
                titleColor: white,
                height: 70,
                borderColor: primaryColor,
                fontSize: 18,
                width: 360,
                onTap: () => Get.to(const GstReturnAboveFive())),
            const SizedBox(height: defaultPadding * 2),
          ],
        ),
      ),
    );
  }
}
