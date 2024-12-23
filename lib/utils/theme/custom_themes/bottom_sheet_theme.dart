import 'package:flutter/material.dart';

class TBottomSheetTheme{
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme=BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(maxWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
  );
  
  static BottomSheetThemeData darkBottomSheetTheme=BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: BoxConstraints(maxWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
  );
}