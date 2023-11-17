import 'package:PET_CARE_APP/Views/applointment_screen/appointmentScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/tabController.dart';

class app_homeWiget extends StatefulWidget {
  const app_homeWiget({super.key});

  @override
  State<app_homeWiget> createState() => _app_homeWigetState();
}

class _app_homeWigetState extends State<app_homeWiget> {
  final TabController upcomingController =
      Get.put(tabcontroller() as TabController);
  final TabController pastController =
      Get.put(tabcontroller() as TabController);
  final MyContainerController containerController =
      Get.put(MyContainerController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Container(
        width: double.infinity,
        height: 176,
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
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'Appointments',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // _buildTab("Upcoming", upcomingController),
                  // _buildTab("Past", pastController),
                ],
              )),
        ]),
      ),
    );
  }

}
