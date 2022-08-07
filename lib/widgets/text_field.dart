import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:people_count/colorPallete/color_pallete.dart';

Widget buildTextField({required TextEditingController controller, GlobalKey? formKey}){
  return Form(
    key: formKey,
    child: TextFormField(
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
      validator: (value){
        if(value == null || value.isEmpty){
          return "Você precisa informar um valor";
        }
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        hintText: "Ex: 30",
        fillColor: AppColors.babyPowder,
        filled: true,
        hintStyle: const TextStyle(color: AppColors.antiIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        )
      ),
    )
  );
}