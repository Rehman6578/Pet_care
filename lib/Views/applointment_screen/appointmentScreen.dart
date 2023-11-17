import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Appointments());
}

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            MyContainer(),
            // Expanded(
            //   // child: MySelectedScreen(),
            // ),
          ],
        ),
      ),
    );
  }
}

class MyContainerController extends GetxController {
  var selectedItem = "Upcoming".obs;
}

class MyContainer extends StatelessWidget {


  final MyContainerController controller =
      Get.put(MyContainerController());

   MyContainer({super.key});

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
        child: Column(
          children: [
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
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildTab("Upcoming"),
                    _buildTab("Past"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String text) {
    return Obx(() {
      bool isSelected = controller.selectedItem.value == text;

      return GestureDetector(
        onTap: () {
          controller.selectedItem.value = text;
        },
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : null,
            borderRadius: BorderRadius.circular(isSelected ? 25 : 0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      );
    });
  }
}

// class MySelectedScreen extends StatelessWidget {
//   final MyContainerController containerController = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       if (containerController.selectedItem.value == "Upcoming") {
//         return _buildUpcomingScreen();
//       } else {
//         return _buildPastScreen();
//       }
//     });
//   }
//
//   Widget _buildUpcomingScreen() {
//     return Container(
//       color: Colors.green,
//       child: Center(
//         child: Text(
//           "Upcoming Screen",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildPastScreen() {
//     return Container(
//       color: Colors.orange,
//       child: Center(
//         child: Text(
//           "Past Screen",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
