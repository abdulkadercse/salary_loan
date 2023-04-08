import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_color.dart';

const appTextDecoration = InputDecoration(
  hintStyle: TextStyle(
    color: AppColor.textFieldColor,
  ),
  fillColor: Colors.white,
  filled: true,
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffDADADA), width: 2),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);
