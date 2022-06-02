import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:quick_file/utils/utils.dart';

showLoading3() {
  return const SpinKitFadingCircle(
    color: primaryColor,
    size: 30,
  );
}

showLoading2() {
  return const SpinKitFadingCircle(
    color: white,
    size: 30,
  );
}

showLoading({String? title}) {
  return Get.defaultDialog(
      title: title ?? 'Loading...',
      titleStyle: const TextStyle(
          color: black, fontWeight: FontWeight.w400, fontSize: 16),
      middleText: 'please wait',
      middleTextStyle:
          const TextStyle(color: black, fontWeight: FontWeight.w300),
      backgroundColor: white,
      actions: [
        const SpinKitSpinningLines(
          color: primaryColor,
          size: 30,
        ),
      ]);
}

customLoading() {
  return Get.defaultDialog(
      title: 'saving!!!',
      barrierDismissible: false,
      titleStyle: const TextStyle(
          color: black, fontWeight: FontWeight.w400, fontSize: 18),
      middleText: 'please wait',
      middleTextStyle:
          const TextStyle(color: black, fontWeight: FontWeight.w300),
      backgroundColor: white,
      actions: [
        const SpinKitThreeBounce(
          color: primaryColor,
          size: 30,
        ),
      ]);
}

dismissLoadingWidget() {
  Get.back();
}
