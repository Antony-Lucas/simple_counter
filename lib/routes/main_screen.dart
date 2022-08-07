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
  bool get isEmptyNumber => _count == 0;
  bool get isFullNumber => _count == int.parse(widget.content);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            text: isFullNumber ? "Limite Alcançado" : "Limite: ${widget.content}",
            colored: AppColors.antiIcon,
            alignment: TextAlign.center
          ),
          mainText(text:'$_count'),
          const SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              textButton(
                labelButton: "-",
                bgColor: isEmptyNumber ? AppColors.babyPowder : AppColors.antiIcon,
                txtColor: isEmptyNumber ? AppColors.antiIcon : AppColors.fontAwesome,
                event: (){
                  isEmptyNumber ? null : decrementCounter();
                }
              ),
              const SizedBox(width: 30,),
              textButton(
                labelButton: "+",
                bgColor: isFullNumber ? AppColors.babyPowder : AppColors.antiIcon,
                txtColor: isFullNumber ? AppColors.antiIcon : AppColors.fontAwesome,
                event: (){
                  isFullNumber ? null : incrementCounter();
                }
              ),
            ],
          ),
          const SizedBox(height: 100,)
        ],
      )
    );
  }
}
