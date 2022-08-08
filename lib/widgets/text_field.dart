import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:people_count/colorPallete/color_pallete.dart';

Widget numberTextField({required TextEditingController controller, String? hintText}){
  return Form(
    child: TextFormField(
      controller: controller,
      autofocus: true,
      cursorColor: AppColors.antiIcon,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      maxLength: 7,
      style: const TextStyle(
        color: AppColors.antiIcon,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        counter: const Offstage(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        hintText: hintText,
        fillColor: AppColors.babyPowder,
        filled: true,
        hintStyle: const TextStyle(
          color: AppColors.antiIcon,
          fontSize: 15
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        )
      ),
    )
  );
}

Widget txtTextField({required TextEditingController controller, String? hintText, GlobalKey? formKey}){
  return Form(
      key: formKey,
      child: TextFormField(
        controller: controller,
        autofocus: true,
        cursorColor: AppColors.antiIcon,
        maxLength: 40,
        style: const TextStyle(
          color: AppColors.antiIcon,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        validator: (value){
          if(value == null || value.isEmpty){
            return "Por favor, informe um título";
          }
        },
        decoration: InputDecoration(
          counter: const Offstage(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          hintText: hintText,
          fillColor: AppColors.babyPowder,
          filled: true,
          hintStyle: const TextStyle(
              color: AppColors.antiIcon,
              fontSize: 15
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          )
        ),
      )
  );
}