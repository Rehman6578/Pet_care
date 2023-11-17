import 'package:PET_CARE_APP/Views/auth_screen/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/images.dart';
import '../../const/strings.dart';
import '../../widget_common/round_button.dart';
import '../../widget_common/text_field.dart';
import '../search_screen/search_screen.dart';


class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  Colors.blue.shade400,
                  Colors.blue.shade800,
                  Colors.blue.shade900
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 65,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 35,
                    )),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 35,
                    top: 12,
                  ),
                  child: Text(
                    signin,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 380),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 243, 243, 243)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x142C358A),
                    blurRadius: 28,
                    offset: Offset(4, 6),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textField(
                            label: email,
                            hint: emailHint,
                            type: TextInputType.emailAddress),
                        const SizedBox(
                          height: 10,
                        ),
                        textField(
                            label: password, hint: passHint, isPass: true),
                        TextButton(
                            onPressed: () {},
                            child: const Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                donotremeberpass,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 21, 101, 192)),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Center(
                            child: roundButton(
                                title: signin,
                                size: const Size(310, 50),
                                onPress: () {Get.to( const SearchScreen());}),
                          ),
                        )
                      ]),
                ),
              ),
            ),
          ),
          //or continue with FB icon, Google icon

          Padding(
            padding: const EdgeInsets.only(top: 540, left: 20, right: 20),
            child: Column(
              children: [
                const Row(children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      orcontinuewith,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 56, 95, 171),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: Center(
                          child: Image.asset(
                        icfb,
                        fit: BoxFit.cover,
                      )),
                    ),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: ShapeDecoration(
                          color: const Color(0xFFEF403B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      child: Center(
                        child: Image.asset(
                          icgoogle,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      donothaveacc,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(const RegistrationScreen());
                        },
                        child: const Text(
                          registration,
                          style: TextStyle(
                            color: Color.fromARGB(255, 21, 101, 192),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
