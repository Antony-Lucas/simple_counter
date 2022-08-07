import 'package:flutter/material.dart';
import 'package:people_count/colorPallete/color_pallete.dart';
import 'package:people_count/widgets/back_button.dart';
import 'package:people_count/widgets/show_dialog.dart';
import 'package:people_count/widgets/text_button.dart';
import 'package:people_count/widgets/text_labels.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.content}) : super(key: key);
  final String content;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _count = 0;

  void incrementCounter(){
    setState(() {
      _count++;
    });
  }
  void decrementCounter(){
    setState(() {
      _count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          backButtonIcon(
            setIcon: const Icon(Icons.chevron_left),
            event: (){
              showDialog(
                context: context,
                builder: (_) => alertDialog(setContext: context),
                barrierDismissible: true
              );
            }),
          labelText(
            text: "${widget.content}\nLimite",
            colored: AppColors.antiIcon,
            alignment: TextAlign.center
          ),
          mainText(text: '$_count'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              textButton(
                labelButton: "Remover",
                event: (){
                  decrementCounter();
                }
              ),
              textButton(
                labelButton: "Adicionar",
                event: (){
                  incrementCounter();
                  if(_count == int.parse(widget.content)){
                    print("lotou ai po kkkk");
                  }
                }
              ),
            ],
          ),
          const SizedBox(height: 250,)
        ],
      )
    );
  }
}
