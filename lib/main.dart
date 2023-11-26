import 'package:PET_CARE_APP/Views/MainDashboard.dart';
import 'package:PET_CARE_APP/Views/applointment_screen/appointment_screen.dart';
import 'package:PET_CARE_APP/Views/auth_screen/Login.dart';
import 'package:PET_CARE_APP/Views/auth_screen/LoginScreen.dart';
import 'package:PET_CARE_APP/Views/auth_screen/RegisterScreen.dart';
import 'package:PET_CARE_APP/Views/profile_screen/profiletwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Views/splash_screen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/SplashScreen',
      getPages: [
        GetPage(name: '/SplashScreen', page: () => const Splashscreen()),
        GetPage(name: '/LoginScreen', page: () => const LoginScreen()),
        GetPage(name: '/RegisterScreen', page: () => const RegisterScreen()),
        GetPage(name: '/login', page: () => const Login()),
        GetPage(name: '/MainScreen', page: () => const Maindashboard()),
        GetPage(name: '/AppointmentScreen', page: () => const AppointmentScreen()),
        GetPage(name: '/AppointmentScreen', page: () => const AppointmentScreen()),
        GetPage(name: '/profileTwo', page:()=> const ProfileTwo()),
      ],
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
    );
  }
}
