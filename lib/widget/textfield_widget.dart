import 'package:flutter/material.dart';

Widget buildTextField(
    {String hintText,
    TextEditingController controller,
    String labelText,
    TextInputType keyboardType}) {
  return TextField(
    keyboardType: keyboardType,
    controller: controller,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.black),
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[300],
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[300],
        ),
      ),
    ),
  );
}
