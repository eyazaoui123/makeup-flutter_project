import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme=OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor:Colors.black,
      side:BorderSide(color: Colors.blue),
      textStyle: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );


  static final darkOutlinedButtonTheme=OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor:Colors.white,
      side:BorderSide(color: Colors.blue),
      textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );
}