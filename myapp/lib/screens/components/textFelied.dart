// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names, camel_case_types, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class Text_fel extends StatelessWidget {
  Text_fel(
      {Key? key,
      this.obscure,
      required this.TypeInput,
      required this.prefixIcon,
      this.controller})
      : super(key: key);
  bool? obscure;
  String? TypeInput;
  Icon? prefixIcon;
  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        enabled: true,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2)),
          hintText: "Enter Your $TypeInput .",
          hintStyle: const TextStyle(color: Colors.white),
          label: Text(
            "${TypeInput}",
            style: const TextStyle(color: Colors.white),
          ),
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        maxLines: 1,
        maxLength: 40,
        cursorColor: Colors.white,
        textAlign: TextAlign.center,
        obscureText: obscure!,
      ),
    );
  }
}
