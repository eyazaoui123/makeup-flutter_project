// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType TextInputTypee;
final bool isPassword ;
 final String hintTextt;
 final TextEditingController c;
 
  const MyTextField({super.key,required this.TextInputTypee,required this.isPassword,required this.hintTextt,required this.c});

  @override
  Widget build(BuildContext context) {
    return TextField(
                  keyboardType: TextInputTypee,
                  obscureText: isPassword,
                  controller: c,
                  decoration: InputDecoration(
                    hintText: hintTextt,
                    // To delete borders
                    enabledBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    // fillColor: Colors.red,
                    filled: true,
                    contentPadding: const EdgeInsets.all(8),
                  ));
  }
}