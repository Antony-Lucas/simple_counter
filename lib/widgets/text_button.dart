import 'package:flutter/material.dart';

Widget textButton({required String labelButton, required event}){
  return TextButton(
      onPressed: event,
      child: Text(labelButton),
  );
}