import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_file/utils/utils.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      icon: Icon(
        Icons.close,
        size: 26,
        color: black,
      ),
      onPressed: () => Get.back(),
    );
  }
}
