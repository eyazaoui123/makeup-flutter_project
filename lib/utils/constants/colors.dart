import 'package:flutter/material.dart';

class TColors {
  TColors._();
//app basic colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

//gradient colors
  static const Gradient linerGradient = LinearGradient(
      begin: Alignment(0, 0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]);

//text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

//background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBacKground = Color(0xFFF3F5FF);

//Background container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

//button colors
  static const Color buttonPrimary = Color.fromARGB(255, 65, 47, 231);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Colors.white;

//border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

//error and Validation colors
  static const Color error = Color.fromARGB(255, 238, 33, 19);
  static const Color success = Color.fromARGB(204, 46, 125, 50);
  static const Color warning = Color.fromARGB(255, 240, 122, 4);
  static const Color info = Color.fromARGB(255, 34, 85, 214);

//neutral shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);

  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
