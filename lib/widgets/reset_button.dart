import 'package:flutter/material.dart';
import 'package:people_count/colorPallete/color_pallete.dart';

Widget resetButton({required Icon setIcon, required event}){
  return Container(
    padding: const EdgeInsets.only(bottom: 150),
    child: IconButton(
      onPressed: event,
      icon: setIcon,
      iconSize: 30,
      color: AppColors.antiIcon,
      alignment: Alignment.topLeft,
    )
  );
}