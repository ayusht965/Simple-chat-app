import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.blue,
    title: Text(
      'AT ChatApp',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

InputDecoration inputTextDecoration(String hinttext) {
  return InputDecoration(
      hintText: hinttext,
      hintStyle: TextStyle(color: Colors.white54),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ));
}

TextStyle inputTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 17);
}
