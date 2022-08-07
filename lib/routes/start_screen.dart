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
  final _quantityController = TextEditingController();
  bool? status;
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
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
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: labelText(
                  text: "Eai, qual o limite da sua contagem?",
                  colored: AppColors.fontAwesome,
                  alignment: TextAlign.start
                ),
              ),
              SizedBox(
                height: 70.0,
                child: buildTextField(controller: _quantityController, formKey: _formKey),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 140),
                child: iconButton(
                  event: () {
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder:
                        (context) =>
                        MainScreen(content:
                        _quantityController.text)));
                    }
                  },
                ),
              )
            ],
          ),
        )
    );
  }
}