import 'package:e_mart/Screens/home_screen/main_home_screen.dart';
import 'package:e_mart/Screens/login_screen/login_screen.dart';
import 'package:e_mart/bottom_navigation/bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'Screens/signup_screen/sign_up_screen.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  BottomNavigationBarExample(),
    );
  }
}


