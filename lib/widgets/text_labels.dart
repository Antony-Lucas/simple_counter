import 'package:flutter/material.dart';

Widget labelText({required String text, required Color colored, required alignment}){
  return Text(
    text,
    style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: colored,
    ),
    textAlign: alignment,
  );
}

Widget mainText({required String text}){
  return Text(
    text,
    style: TextStyle(fontSize: 100),
    textAlign: TextAlign.center,
  );
}