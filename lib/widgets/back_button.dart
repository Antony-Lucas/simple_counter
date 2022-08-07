import 'package:flutter/material.dart';

Widget BackButtonIco({required Icon setIcon, required event}){
  return IconButton(
    onPressed: event,
    icon: setIcon,
  );
}