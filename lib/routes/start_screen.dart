import 'package:flutter/material.dart';
import 'package:people_count/routes/main_screen.dart';

class CatchNumber extends StatelessWidget {
  const CatchNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainScreen())
            );
          }, 
          icon: const Icon(
            Icons.arrow_circle_right_outlined, 
            color:Colors.green,
            size: 50,
          )
        )
      ),
    );
  }
}
