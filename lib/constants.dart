


import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String getOs(){
  return Platform.operatingSystem;
}

class adaptiveCircularIndicator extends StatelessWidget{
  String? osType;
  adaptiveCircularIndicator({required String? osType}){
    this.osType=osType;
  }
  @override
  Widget build(BuildContext context) {

    //check type of os to determine which type of indictor you can use as widget
    //*****************************NOTE THIS CLASS CAN BE USED AS WIDGET****************************//
    if(osType=="android")
      return CircularProgressIndicator();

    return CupertinoActivityIndicator();

  }

}