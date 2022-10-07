// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import './components/ButtoninLogin.dart';
import './components/textFelied.dart';
import 'package:lab11/model/showdialog.dart';

class Log_in extends StatefulWidget {
  const Log_in({Key? key, Key}) : super(key: key);

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  TextEditingController? controller1 = TextEditingController();
  TextEditingController? controller2 = TextEditingController();
  String Email = "group6@gmail.com";
  String password = "123";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign in",
          style: TextStyle(color: Colors.blue.shade600),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.menu,
                color: Colors.blue,
              ))
        ],
        leading: const Icon(
          Ionicons.person,
          color: Colors.blue,
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: SweepGradient(colors: [
          Color.fromARGB(255, 122, 171, 250),
          Color.fromARGB(255, 91, 165, 250),
          Color.fromARGB(255, 76, 117, 250),
          Color.fromARGB(210, 87, 111, 248),
          Color.fromARGB(255, 46, 121, 241),
        ])),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome ",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 50),
                child: Text(
                  "Sign In With Email and Password or Continue With social Media  ",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text_fel(
                obscure: false,
                TypeInput: "Email",
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                controller: controller1,
              ),
              Text_fel(
                obscure: true,
                TypeInput: "Password",
                prefixIcon: const Icon(
                  Icons.key,
                  color: Colors.white,
                ),
                controller: controller2,
              ),
              const SizedBox(
                height: 25,
              ),
              My_button(
                onPressed: () {
                  if (controller1!.text.isEmpty && controller2!.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return MyAlert(
                              Error: "Please Enter your Email and password");
                        }));
                  } else {
                    if (Email == controller1!.text &&
                        password == controller2!.text) {
                      Navigator.pushNamed(context, "Home_page");
                    } else {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return MyAlert(
                                Error:
                                    "You have entered a wrong email and/or password. Please enter a valid email and/or password or change the password");
                          }));
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
