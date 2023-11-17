import 'package:flutter/material.dart';

Widget roundButton({String? title, required onPress, size}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
        elevation: 3,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: size),
    onPressed: onPress,
    child: Text(
      title.toString(),
      style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w700, height: 20 / 16),
    ),
  );
}
