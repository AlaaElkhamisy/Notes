import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static final AppBar_text = TextStyle(
    fontSize: 60,
    fontFamily: "Tangerine",
    color: Colors.white,
  );
  static final Title_Style = TextStyle(
    fontSize: 30,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  static final SubTitle_Style =
      TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5));
  static final date_Style =
      TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5));
}
