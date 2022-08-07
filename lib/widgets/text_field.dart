import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:people_count/colorPallete/color_pallete.dart';

Widget buildTextField({required TextEditingController controller}){
  return TextField(
    controller: controller,
    autofocus: true,
    cursorColor: AppColors.antiIcon,
    keyboardType: TextInputType.number,
    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    style: const TextStyle(
      color: AppColors.antiIcon,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    decoration: const InputDecoration(
      hintText: "Ex: 30",
      hintStyle: TextStyle(color: AppColors.antiIcon),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      )
    ),
  );
}