import 'package:flutter/material.dart';

class PastScreen extends StatelessWidget {
  const PastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          'Past Appointments',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
