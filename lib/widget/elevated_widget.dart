import 'package:flutter/material.dart';

Widget buildElevatedButton(BuildContext context,
    {String textElevatedButton, Function onPressed, Color primaryColor}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      primary: primaryColor ?? Colors.indigo,
      minimumSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.07),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    onPressed: onPressed,
    child: Text(textElevatedButton),
  );
}
