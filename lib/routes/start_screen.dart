import 'package:flutter/material.dart';
import 'package:people_count/colorPallete/color_pallete.dart';
import 'package:people_count/routes/main_screen.dart';
import 'package:people_count/widgets/icon_button.dart';
import 'package:people_count/widgets/text_field.dart';
import 'package:people_count/widgets/text_labels.dart';

class CatchNumber extends StatefulWidget {
  const CatchNumber({Key? key}) : super(key: key);
  @override
  State<CatchNumber> createState() => _CatchNumberState();
}

class _CatchNumberState extends State<CatchNumber> {
  final _titleController = TextEditingController();
  final _quantityController = TextEditingController();
  final _titleKey = GlobalKey<FormState>();
  bool? status;
  @override
  void dispose() {
    _titleController.dispose();
    _quantityController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: labelText(
                  text: "O que você deseja contar?",
                  colored: AppColors.fontAwesome,
                  alignment: TextAlign.start
                ),
              ),
              SizedBox(
                height: 85.0,
                child: txtTextField(
                  controller: _titleController,
                  hintText: "Pontução, quantidade de livros, etc...",
                  formKey: _titleKey
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: labelText(
                  text: "Limite (opcional)",
                  colored: AppColors.fontAwesome,
                  alignment: TextAlign.start
                ),
              ),
              SizedBox(
                height: 85.0,
                child: numberTextField(
                  controller: _quantityController,
                  hintText: "Ex: 30"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: iconButton(
                  event: () {
                    if(_titleKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => MainScreen(
                          content: _quantityController.text.isEmpty ? -1 : int.parse(_quantityController.text),
                          title: _titleController.text,)));
                    }
                  },
                ),
              ),
              const SizedBox(height: 100,)
            ],
          ),
        )
    );
  }
}