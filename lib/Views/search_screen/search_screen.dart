import 'package:PET_CARE_APP/Views/search_screen/popup_date_screen.dart';
import 'package:PET_CARE_APP/Views/search_screen/popup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../const/images.dart';
import '../applointment_screen/appointment_screen.dart';
import '../profile_screen/profiletwo.dart';
import 'components/icon_screen.dart';
import 'nearme_veterinary_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Image(image: AssetImage(search),
            ),
            onPressed: () {
              Get.off(const PopupScreen());
            },
          ),
        ],
      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 152,left: 30,right: 30),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text("What are you \n looking for,",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Encode Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 30
                        )
                    ),

                    Column(
                      children: [
                        Text(''),
                        SizedBox(height: 28,),
                        Text('Maria?',
                            style: TextStyle(
                                fontFamily: 'Encode Sans',
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.orange)
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: [
                      CustomGridItem(title: 'Veterinary', assetImagePath: vet, onPressed: (){Get.off(const NearVeterinaryScreen());}),
                      CustomGridItem(title: 'Grooming', assetImagePath: grooming, onPressed: (){}),
                      CustomGridItem(title: 'Pet boarding', assetImagePath: petb, onPressed: (){}),
                      CustomGridItem(title: 'Adoption', assetImagePath: adoption, onPressed: (){}),
                      CustomGridItem(title: 'Dog Walking', assetImagePath: dogw, onPressed: (){}),
                      CustomGridItem(title: 'Training', assetImagePath: training, onPressed: (){}),
                      CustomGridItem(title: 'Pet Taxi', assetImagePath: pettaxi, onPressed: (){}),
                      CustomGridItem(title: 'Pet Date', assetImagePath: petdate, onPressed: (){Get.off(const PopupDateScreen());}),
                      CustomGridItem(title: 'Other', assetImagePath: other, onPressed: (){}),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
            Get.to(const ProfileTwo());
          }
          if (index == 1) {
            Get.to(const AppointmentScreen());
          }
          if (index == 2) {
            Get.to(const PopupScreen());
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
      // bottomNavigationBar: BottomNavigationBar(onTap: (index){ },
      //   backgroundColor: blue,
      //   currentIndex: 0,
      //   items:  [
      //     BottomNavigationBarItem(icon: InkWell(
      //         onTap: (){
      //           Get.to(PopupScreen());
      //         },
      //         child: Image(image: AssetImage(search))),
      //       label: 'Search',),
      //     BottomNavigationBarItem(icon: InkWell(
      //       onTap: (){
      //         Get.to(AppointmentScreen());
      //       },
      //         child: Image(image: AssetImage(appont))),
      //       label: 'Appointment',),
      //     BottomNavigationBarItem(icon: InkWell(
      //       onTap: (){
      //        // Get.to(AppointmentScreen());
      //       },
      //         child: Image(image: AssetImage(explore))),
      //       label: 'Explore',),
      //     BottomNavigationBarItem(icon: InkWell(
      //         onTap: (){
      //           Get.to(ProfileTwo());
      //         },
      //         child: Image(image: AssetImage(person))),
      //       label: 'Profile',),
      //   ],),
    );
  }
}