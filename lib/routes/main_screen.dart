import 'package:flutter/material.dart';
import 'package:people_count/widgets/back_button.dart';
import 'package:people_count/widgets/text_button.dart';
import 'package:people_count/widgets/text_labels.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

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
          BackButtonIco(
            setIcon: const Icon(Icons.arrow_back),
            event: (){
              Navigator.pop(context);
            }),
          labelText(),
          mainText(text: '$_count'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              textButton(
                labelButton: "Saiu",
                event: (){
                  decrementCounter();
                }
              ),
              textButton(
                labelButton: "Entrou",
                event: (){
                  incrementCounter();
                }
              ),
            ],
          )
        ],
      )
    );
  }
}
