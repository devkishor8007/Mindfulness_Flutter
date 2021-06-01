import 'package:flutter/material.dart';

Widget buildOutlinedButton(BuildContext context,
    {String textLabel, Widget icon}) {
  return OutlinedButton.icon(
    style: OutlinedButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      minimumSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.07),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    onPressed: () {},
    icon: icon,
    label: Text(textLabel),
  );
}
