import 'package:flutter/material.dart';
import 'package:people_count/routes/start_screen.dart';
import 'package:people_count/widgets/text_button.dart';

Widget alertDialog({required setContext}){
  return AlertDialog(
    title: const Text("Sair"),
    content: const Text("Deseja voltar para a seleção de quantidade?"),
    actions: [
      textButton(
        labelButton: "Cancelar",
        event: (){
          Navigator.pop(setContext);
        }
      ),
      textButton(
        labelButton: "Sim",
        event: (){
          Navigator.pushReplacement(
              setContext,
              MaterialPageRoute(builder: (setContext) => CatchNumber())
          );
        }
      )
    ],
    elevation: 24.0,
  );
}