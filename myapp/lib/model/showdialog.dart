// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  MyAlert({Key? key, required this.Error, this.myfunction}) : super(key: key);
  String? Error;
  Function()? myfunction;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 70, vertical: 160),
        alignment: Alignment.topCenter,
        title: const Center(child: Text("Error")),
        content: Center(
            child: Container(
                child: Column(children: [
          Text("$Error"),
        ]))));
  }
}
