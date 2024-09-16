import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const primary = Color(0xFF15ADBD);
  static const lightblue = Color(0xFFC7FAFF);
  static const pink = Color(0xFFD133FF);
  static const black = Color(0xFF122123);

  static const gradient = LinearGradient(
    colors: [pink, primary],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
