import 'package:flutter/material.dart';

import 'utils.dart';

const appBarElevation = 0.0;
const headingFontSize = 18.0;
const defaultPadding = 10.0;

var textInputDecoration = InputDecoration(
  enabledBorder:
      const OutlineInputBorder(borderSide: BorderSide(color: mediumBlack)),
  disabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
    color: grey,
  )),
  focusedBorder:
      const OutlineInputBorder(borderSide: BorderSide(color: primaryColor)),
  border: OutlineInputBorder(
    borderSide: const BorderSide(color: mediumBlack),
    borderRadius: BorderRadius.circular(0),
  ),
  labelStyle:
      const TextStyle(color: black, fontSize: 15, fontWeight: FontWeight.w300),
  hintStyle: const TextStyle(
      color: mediumBlack, fontSize: 15, fontWeight: FontWeight.w300),
);
