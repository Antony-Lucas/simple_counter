import 'package:flutter/material.dart';
import 'package:people_count/colorPallete/color_pallete.dart';

Widget iconButton({required event, bool? disabled}){
  return IgnorePointer(
    ignoring: disabled!,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.antiIcon,
        padding: const EdgeInsets.all(10),
        shape: const CircleBorder(
          side: BorderSide(width: 5, color: AppColors.antiIcon),
        )
      ),
      onPressed: event,
      child: const Icon(
        Icons.chevron_right,
        color: AppColors.fontAwesome,
        size: 35,
      ),
    ),
  );
}