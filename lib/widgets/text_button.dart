import 'package:flutter/material.dart';
import 'package:people_count/colorPallete/color_pallete.dart';

Widget textButton({required String labelButton, required event, Color? bgColor, Color? txtColor}){
  return TextButton(
    onPressed: event,
    style: TextButton.styleFrom(
      padding: const EdgeInsets.all(10),
      backgroundColor: bgColor,
      textStyle: const TextStyle(
        fontSize: 45,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      )
    ),
    child: Text(
      labelButton,
      style: TextStyle(
        color: txtColor,
      ),
    ),
  );
}

Widget dialogTextButton({required String labelButton, required event}){
  return TextButton(
    onPressed: event,
    child: Text(labelButton),
  );
}