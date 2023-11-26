// create a method for container inside icons and text
import 'package:PET_CARE_APP/Views/search_screen/add_pet_detail.dart';
import 'package:PET_CARE_APP/Views/search_screen/popup_screen.dart';
import 'package:PET_CARE_APP/const/images.dart';
import 'package:PET_CARE_APP/widget_common/round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Views/search_screen/components/icon_screen.dart';

class TextFields extends StatelessWidget {
  // creat a variable for title , hint text and icon
  final String title;
  final String hintText;

  // add controller for textfield
  final TextEditingController controller;

  const TextFields({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: hintText,
                hintText: title,
                labelStyle: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

// create class for bottom navigation bar
class home_nav extends StatefulWidget {
  const home_nav({Key? key}) : super(key: key);

  @override
  State<home_nav> createState() => _home_nav();
}

class _home_nav extends State<home_nav> {
  final AddPetDetail _addPetDetail = Get.put(const AddPetDetail());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Show the BottomSheet after the screen is rendered
      showBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Wrap(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 20, bottom: 20),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Image(image: AssetImage(close))),
                        const SizedBox(
                          width: 100,
                        ),
                        const Text(
                          'Add Pet Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ListTile(
                    leading: Image(image: AssetImage(dot)),
                    title: Text('Faster check-in at appointment.'),
                  ),
                  const ListTile(
                    leading: Image(image: AssetImage(dot)),
                    title: Text(
                        'Schedule of vaccination, haircuts, inspections etc.'),
                  ),
                  const ListTile(
                    leading: Image(image: AssetImage(dot)),
                    title:
                        Text('Reminder of the upcoming events with your pet.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, bottom: 20, top: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        roundButton(
                            title: "+ Add",
                            size: const Size(150, 50),
                            onPress: () {
                              Get.to(const AddPetDetail());
                            }),
                        //child:Text('+ Add')),

                        const SizedBox(
                          width: 20,
                        ),

                        roundButton(
                          title: "No, later",
                          size: const Size(150, 50),
                          onPress: () {
                            Navigator.of(context).pop();
                          },
                          // style: ElevatedButton.styleFrom(
                          //   //onPrimary: Colors.white, // Text color
                          //   padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10), // Adjust padding for size
                        ),
                        // child:Text('No, later'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // add search icon on right side of appbar
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // add icon for search
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PopupScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 70, left: 25, right: 15),
              child: Text('What are you looking for?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    wordSpacing: 1.9,
                    color: Colors.black,
                    fontFamily: 'Encode Sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                  )),
            ),
            // use gridview to display 3 row and 3 column of contianer inside icons and text
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                children: [
                  CustomGridItem(
                      title: 'Veterinary',
                      assetImagePath: 'assets/images/vet.png',
                      onPressed: () {}),
                  CustomGridItem(
                      title: 'Grooming',
                      assetImagePath: 'assets/images/grooming.png',
                      onPressed: () {}),
                  CustomGridItem(
                      title: 'Pet boarding',
                      assetImagePath: 'assets/images/icon.png',
                      onPressed: () {}),
                  CustomGridItem(
                      title: 'Veterinary',
                      assetImagePath: 'assets/images/vet.png',
                      onPressed: () {}),
                  CustomGridItem(
                      title: 'Veterinary',
                      assetImagePath: 'assets/images/vet.png',
                      onPressed: () {}),
                  CustomGridItem(
                      title: 'Veterinary',
                      assetImagePath: 'assets/images/vet.png',
                      onPressed: () {}),
                  CustomGridItem(
                      title: 'Veterinary',
                      assetImagePath: 'assets/images/pettaxi.png',
                      onPressed: () {}),
                  CustomGridItem(
                      title: 'Veterinary',
                      assetImagePath: 'assets/images/petdate.png',
                      onPressed: () {}),
                  CustomGridItem(
                      title: 'Veterinary',
                      assetImagePath: 'assets/images/vet.png',
                      onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


