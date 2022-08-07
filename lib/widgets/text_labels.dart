import 'package:flutter/material.dart';
import 'package:people_count/colorPallete/color_pallete.dart';

Widget labelText({required String text, required Color colored, required alignment}){
  return SizedBox(
    height: 50,
    child: Text(
      text,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: colored,
      ),
      textAlign: alignment,
    ),
  );
}

Widget mainText({required String text}){
  return Text(
    text,
    style: const TextStyle(
      fontSize: 100,
      color: AppColors.grayChapter,
    ),
    textAlign: TextAlign.center,
  );
}