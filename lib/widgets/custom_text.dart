import 'package:flutter/material.dart';
import 'package:quick_file/utils/utils.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? textAlign;
  final TextDecoration? decoration;

  const CustomText(
      {Key? key,
      @required this.text,
      this.size,
      this.color,
      this.weight,
      this.textAlign,
      this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign ?? TextAlign.left,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? black,
          decoration: decoration ?? TextDecoration.none,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
