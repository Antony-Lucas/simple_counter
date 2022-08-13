import 'package:flutter/material.dart';
import 'package:people_count/colorPallete/color_pallete.dart';

Widget backButtonIcon({required Icon setIcon, required event}){
  return Container(
    padding: const EdgeInsets.only(bottom: 100),
    child: IconButton(
      onPressed: event,
      icon: setIcon,
      iconSize: 40,
      color: AppColors.antiIcon,
      alignment: Alignment.topLeft,
    ),
  );
}