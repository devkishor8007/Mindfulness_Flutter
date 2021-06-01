import 'package:flutter/material.dart';

Widget buildText(
  String textString, {
  Color textcolor,
  FontWeight fontWeight,
  double fontSize,
}) {
  return Text(
    textString,
    style:
        TextStyle(color: textcolor, fontWeight: fontWeight, fontSize: fontSize),
  );
}
