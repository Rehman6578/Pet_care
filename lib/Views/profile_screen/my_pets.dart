import 'package:PET_CARE_APP/Views/profile_screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../applointment_screen/appointment_screen.dart';
import 'profiletwo.dart';

class MyPets extends StatelessWidget {
  const MyPets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Use the back arrow icon
          onPressed: () {
            // Add your navigation logic here to go back to the previous screen.
            Navigator.of(context).pop(); // Example of navigating back to the previous screen.
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add,color: Colors.blue,),
            onPressed: () {
              // Add your onPressed logic here!
            },
          ),
        ],
        title: const Text(
          "My Pets",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              width: 350,
              height: 279,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: 112,
                            width: 112,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                              ],
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: AssetImage('assets/images/Circle.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Troy',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Encode Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Toy terrier', // Add your text content
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Encode Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 16, // Adjust the font size
                      ),
                    ),
                  ),
                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Container(
              width: 335,
              height: 46,
              decoration: const BoxDecoration(
                color: Color(0xeaffffff),
              ),

              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add, color: Color(0xFF4552CB)), // Replace with your desired color
                  SizedBox(width: 8), // Add some spacing between the icon and text
                  Text(
                    'Add another pet',
                    style: TextStyle(
                      color: Color(0xFF4552CB), // Replace with your desired color
                      fontFamily: 'Encode Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          )

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (int index) {
          // Respond to item press.
          if (index == 3) {
            // Navigate to the ProfileScreen when the "Profile" item is tapped.
            Get.to(const ProfileScreen());
          }
          if (index == 1) {
            Get.to(const AppointmentScreen());
          }
          if (index == 2) {
            Get.to(const ProfileTwo());
          }
        },

        items: const [
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Appointments',
            icon: Icon(Icons.watch_later_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.explore_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outline_outlined),
          ),
        ],
      ),
    );
  }
}
