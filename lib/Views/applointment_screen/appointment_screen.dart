import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appointment_done.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  int _currentSegment = 0;

  List<String> upcomingAppointments = [
    'Appointment 1 (Upcoming)',
    'Appointment 2 (Upcoming)',
  ];

  List<String> pastAppointments = []; // Initialize as empty list

  List<String> getSelectedAppointments() {
    return _currentSegment == 0 ? upcomingAppointments : pastAppointments;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Container(
        width: double.infinity,
        height: 220,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(34),
              bottomRight: Radius.circular(34),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x142C358A),
              blurRadius: 28,
              offset: Offset(4, 6),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(children: [
          // add appointment text here in center
          const Padding(
            padding: EdgeInsets.only(top: 35),
            child: Text(
              'Appointments',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Container(
              height: 30,
              margin: const EdgeInsets.only(top: 50),
              // use decoration property to add border to the container and set corner radius
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(25),
              ),
              child: CupertinoSegmentedControl<int>(
                children: {
                  0: Container(
                    height: 30,
                    width: 167,
                    decoration: BoxDecoration(
                      color: _currentSegment == 0 ? Colors.blue : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Upcoming',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  1: const Text('Past',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                },
                onValueChanged: (int newValue) {
                  setState(() {
                    _currentSegment = newValue;
                  });
                },
                groupValue: _currentSegment,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Selected Segment: $_currentSegment',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          if (getSelectedAppointments().isEmpty)
            Column(
              children: [
                Image.asset('assets/images/icon.png', width: 200, height: 200),
                const Text(
                  'No Appointments',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const Flexible(
                    flex: 1, fit: FlexFit.loose, child: SizedBox(height: 10)),
                SizedBox(
                  height: 46,
                  width: 240,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const AppointmentDone());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      // Set the background color to blue
                      textStyle: const TextStyle(
                        color: Colors.white,
                        // Set the text color to white
                        fontSize: 16,
                        // Adjust the font size as needed
                        fontWeight:
                            FontWeight.bold, // Adjust the font weight as needed
                      ),
                    ),
                    child: const Text('Find a specialist'),
                  ),
                )
              ],
            )
          else
            Expanded(
              child: ListView.builder(
                itemCount: getSelectedAppointments().length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(getSelectedAppointments()[index]),
                  );
                },
              ),
            ),
        ]),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AppointmentScreen(),
  ));
}
