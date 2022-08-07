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
  bool status = false;
  @override
  void dispose() {
    _quantityController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            labelText(
              text: "Eai, qual o limite da sua contagem?",
              colored: AppColors.fontAwesome,
              alignment: TextAlign.start
            ),
            const SizedBox(height: 1.0),
            buildTextField(controller: _quantityController),
            const SizedBox(height: 30.0),
            iconButton(
              disabled: status,
              event: (){
                print(_quantityController.text);
                if(int.parse(_quantityController.text) >= 0){
                  setState(() {
                    status = true;
                  });
                  Navigator.push(context, MaterialPageRoute(builder:
                    (context) => MainScreen(content:
                      _quantityController.text)));
                }else{
                  setState(() {
                    status = false;
                  });
                }
              }
            )
          ],
        ),
      )
    );
  }
}
