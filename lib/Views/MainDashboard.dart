import 'package:PET_CARE_APP/Utils/Utils.dart';
import 'package:PET_CARE_APP/Views/applointment_screen/appointmentScreen.dart';
import 'package:PET_CARE_APP/Views/profile_screen/profile.dart';
import 'package:PET_CARE_APP/Views/profile_screen/profiletwo.dart';
import 'package:PET_CARE_APP/controllers/MainWrapperController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Maindashboard extends StatefulWidget {
  const Maindashboard({super.key});



  @override
  State<Maindashboard> createState() => _MainScreenState();

}

class _MainScreenState extends State<Maindashboard> {
  final MainWrapperController controller = Get.put(MainWrapperController());

  final List<Widget> _children = [
    const home_nav(),
    const Appointments(),
    const home_nav(),
    const ProfileTwo(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // set backroung color in rgb
        // backgroundColor: Color.fromRGBO(240, 240, 248, 1),
        body: Obx(() => _children[controller.currentIndex.value]),

        // add bottom navigation bar here and add home ,hospital ,sms chat, profile icons
        // bottomNavigationBar: Obx(
        //   () => BottomNavigationBar(
        //     type: BottomNavigationBarType.fixed,
        //     backgroundColor: Colors.white,
        //     selectedItemColor: Colors.blueAccent,
        //     unselectedItemColor: Colors.grey,
        //     currentIndex: controller.currentIndex.value,
        //     onTap: controller.changePage,
        //     items: const [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.search_outlined),
        //         label: 'Search',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.access_time_sharp),
        //         label: 'Appointments',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.explore_outlined),
        //         label: 'Explore',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.person_outline),
        //         label: 'Profile',
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }



}


