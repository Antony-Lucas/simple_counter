import 'package:flutter/material.dart';

Widget labelText(){
  return Text(
    "Pode entrar!",
    style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold
    ),
    textAlign: TextAlign.center,
  );
}

Widget mainText({required String text}){
  return Text(
    text,
    style: TextStyle(fontSize: 100),
    textAlign: TextAlign.center,
  );
}