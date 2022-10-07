// ignore_for_file: file_names, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class My_button extends StatelessWidget {
  My_button({Key? key, required this.onPressed}) : super(key: key);
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 20,
          ),
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      onPressed: onPressed,
      child: const Text(
        "Sign in",
        style: TextStyle(color: Colors.blueAccent),
      ),
    );
  }
}
