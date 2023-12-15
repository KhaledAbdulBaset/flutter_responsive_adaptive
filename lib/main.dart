import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive1adaptive/desktopo.dart';
import 'package:responsive1adaptive/mobile.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder: (context, constraints) {

        // print(MediaQuery.of(context).size.width);
        //
        // if(MediaQuery.of(context).size.width <=500)
        //   {
        //     //change something inside widget if the width reduced
        //     return MediaQuery(
        //     data: MediaQuery.of(context).copyWith(textScaleFactor: 0.5),
        //     child: mobileScreen());
        //   }

        //print the size during change the size of screen
        print(constraints.minWidth.toInt());

        //determine the critical width which you will change the design at
        if(constraints.minWidth.toInt()==500){
          //if the width smaller than 500 display mobile screen else display web screen
          return mobileScreen();
        }

        return desktopScreen();
      }),

    );
  }
}