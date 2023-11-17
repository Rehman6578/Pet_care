import 'package:flutter/material.dart';

Widget textField({label, hint, type, isPass = false}) {
  return TextFormField(
    cursorColor: Colors.blue,
    obscureText: isPass,
    keyboardType: type,
    textAlign: TextAlign.start,
    decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.grey),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey.shade200)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.blue)),
        focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue))),
  );
}
