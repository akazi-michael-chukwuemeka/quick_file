import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_file/screens/home/home.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/widget.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
        child: Center(
          child: SizedBox(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                    text: 'Welcome to QUICK FILE by online India Tax Filings',
                    color: black,
                    size: 28,
                    textAlign: TextAlign.center),
                const SizedBox(height: defaultPadding * 6),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 130,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        return const Icon(Icons.star,
                            color: Colors.yellow, size: 26);
                      }),
                ),
                const SizedBox(height: defaultPadding * 2),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor, width: 1),
                  ),
                  child: const CustomText(
                    text: 'Rated 5 stars on Google Play',
                    color: primaryColor,
                    size: 18,
                  ),
                ),
                const SizedBox(height: defaultPadding * 6),
                CustomButton(
                    title: 'continue',
                    buttonColor: primaryColor,
                    borderColor: primaryColor,
                    height: 60,
                    borderRadius: BorderRadius.circular(25),
                    titleColor: white,
                    width: Get.width,
                    onTap: () => Get.to(Home())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
