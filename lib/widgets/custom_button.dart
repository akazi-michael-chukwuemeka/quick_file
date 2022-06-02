import 'package:flutter/material.dart';
import 'package:quick_file/utils/utils.dart';

import 'widget.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  final Color? buttonColor, borderColor, titleColor;
  final double? width, height, fontSize;
  final BorderRadius? borderRadius;
  final FontWeight? fontWeight;
  const CustomButton(
      {Key? key,
      this.title,
      this.buttonColor,
      this.width,
      this.height,
      this.fontSize,
      this.borderColor,
      this.titleColor,
      this.borderRadius,
      this.fontWeight,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 120,
        height: height ?? 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor ?? white,
          border: Border.all(color: borderColor ?? mediumBlack, width: 1),
          borderRadius: borderRadius ?? BorderRadius.circular(4),
        ),
        child: CustomText(
            text: title,
            textAlign: TextAlign.center,
            weight: fontWeight ?? FontWeight.w400,
            color: titleColor ?? mediumBlack,
            size: fontSize ?? 15),
      ),
    );
  }
}
