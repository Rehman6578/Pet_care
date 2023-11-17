import 'package:flutter/material.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          'Upcoming Appointments',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
