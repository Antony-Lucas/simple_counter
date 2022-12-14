import 'package:flutter/material.dart';
import 'package:people_count/colorPallete/color_pallete.dart';
import 'package:people_count/widgets/back_button.dart';
import 'package:people_count/widgets/reset_button.dart';
import 'package:people_count/widgets/show_dialog.dart';
import 'package:people_count/widgets/text_button.dart';
import 'package:people_count/widgets/text_labels.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.content, required this.title})
      : super(key: key);
  final int content;
  final String title;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool setter = false;
  int _count = 0;
  late String limitText;
  void incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void decrementCounter() {
    setState(() {
      _count--;
    });
  }

  void resetCounter() {
    setState(() {
      _count = 0;
    });
  }

  bool get isEmptyNumber => _count == 0;
  bool get isFullNumber => _count == widget.content;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) =>
            alertDialog(setContext: context),
        );
        return shouldPop!;
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Container(padding: const EdgeInsets.only(top:30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              backButtonIcon(
                setIcon: const Icon(Icons.chevron_left),
                event: () {
                  showDialog(
                    context: context,
                    builder: (_) => alertDialog(setContext: context),
                    barrierDismissible: true);
                  }),
              const SizedBox(width: 90),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('${widget.title}'),
                        backgroundColor: AppColors.fontAwesome,
                      ));
                    },
                    child: labelText(
                      text: '${widget.title}',
                      colored: AppColors.grayChapter,
                      alignment: TextAlign.center),
                  ),
                ),
              ),
              const SizedBox(width: 90),
              resetButton(
                setIcon: const Icon(Icons.refresh),
                event: () {
                  resetCounter();
                }),
            ],
          ),
          Container(padding: const EdgeInsets.only(top:25)),
          labelText(
            text: setLimit(),
            colored: AppColors.antiIcon,
            alignment: TextAlign.center),
          mainText(text: '$_count'),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              textButton(
                labelButton: "-",
                bgColor:
                  isEmptyNumber ? AppColors.babyPowder : AppColors.antiIcon,
                  txtColor: isEmptyNumber
                    ? AppColors.antiIcon
                    : AppColors.fontAwesome,
                  event: () {
                    isEmptyNumber ? null : decrementCounter();
                  }),
              const SizedBox(
                width: 30,
              ),
              textButton(
                labelButton: "+",
                bgColor:
                  isFullNumber ? AppColors.babyPowder : AppColors.antiIcon,
                txtColor:
                 isFullNumber ? AppColors.antiIcon : AppColors.fontAwesome,
                event: () {
                  print('${widget.content}');
                  isFullNumber ? null : incrementCounter();
                }
              ),
            ],
          ),
        ],
      )),
    );
  }

  String setLimit() {
    if (widget.content < 0) {
      limitText = '';
    } else if (isFullNumber) {
      limitText = "Limite Alcan??ado";
    } else {
      limitText = "Limite: ${widget.content}";
    }

    return limitText;
  }
}
