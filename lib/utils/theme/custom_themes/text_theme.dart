import 'package:flutter/material.dart';

class TTextTheme{
  TTextTheme._();

  static TextTheme lightTextTheme=TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.black),
    headlineMedium:  TextStyle().copyWith(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black),
    headlineSmall:  TextStyle().copyWith(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),

    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),
    titleMedium:  TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),
    titleSmall:  TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),
    bodyMedium:  TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.black),
    bodySmall:  TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),

    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.black),
    labelMedium:  TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.black.withOpacity(0.5)),
  );
  static TextTheme darkTextTheme=TextTheme(
     headlineLarge: const TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),
    headlineMedium:  TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white),
     headlineSmall:  TextStyle().copyWith(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),

    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),
    titleMedium:  TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),
    titleSmall:  TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),
    bodyMedium:  TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.white),
    bodySmall:  TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),

    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.white),
    labelMedium:  TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.white.withOpacity(0.5)),
  );
  
}