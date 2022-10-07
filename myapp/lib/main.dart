// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:lab11/screens/home_screen.dart';
import 'package:lab11/screens/welcome_screen.dart';
import './screens/login.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "Home_page": (context) => const Home(),
      "Log_in": (context) => const Log_in(),
    },
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, Key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WelcomeScreen();
  }
}
