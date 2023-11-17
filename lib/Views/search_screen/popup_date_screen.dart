import 'package:PET_CARE_APP/Views/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../const/colors.dart';
import '../../const/images.dart';
import '../../widget_common/round_button.dart';

class PopupDateScreen extends StatelessWidget {
  const PopupDateScreen({super.key});

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
  DateTime dateTime = DateTime(3000,2,1,10,20);
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Show the BottomSheet after the screen is rendered
      showModalBottomSheet(
        context: context,
        //isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
            child: Wrap(
              children: [
                Center(child: Padding(
                  padding: const EdgeInsets.only(top: 18.0,bottom: 10, left: 13),
                  child: Row(
                    children: [
                      InkWell(
                          onTap:(){
                            //Navigator.of(context).pop();
                            Get.off(const SearchScreen());
                          },
                          child: const Image(image: AssetImage(close))),
                      const SizedBox(width: 100,),
                      const Text('Select a Date',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),),
                    ],
                  ),
                )),
                Center(
                  child: SizedBox(
                    height: 200,
                    child: CupertinoDatePicker(
                      backgroundColor: white,
                      initialDateTime: dateTime,
                      onDateTimeChanged: (DateTime newTime){
                        setState(()=>dateTime = newTime);
                      },
                      use24hFormat: true,
                      mode: CupertinoDatePickerMode.date,
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 20,top: 20),
                  child: Row(
                    children: [
                      roundButton(
                          title: "Show 124 results",
                          size: const Size(130, 50),
                          onPress: (){
                            //Navigator.of(context).pop();
                          }
                      ),
                      //child:Text('+ Add')),

                      const SizedBox(width: 20,),

                      roundButton(
                        title: "Skip",
                        size: const Size(130, 50),
                        onPress: (){
                          Get.off(const SearchScreen());
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
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}












