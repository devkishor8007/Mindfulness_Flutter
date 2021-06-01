import 'package:flutter/material.dart';

Widget sizedBox({double width, double height}) {
  return SizedBox(
    height: height ?? 0,
    width: width ?? 0,
  );
}
