
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mobileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

    body:  Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(

            color: Colors.amberAccent,
          ),
        ),
        Expanded(
            flex: 2,
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Log in with your Account !",style: TextStyle(color: Colors.black,fontSize: 30),),
              SizedBox(height: 20,),

              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              Row(children: [
                Expanded(
                  child: InkWell(onTap: (){

                  },
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.teal,
                      height: 50,
                      child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 18,),),

                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: InkWell(onTap: (){

                  },
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      color: Colors.blueAccent,
                      child: Text("Resigster",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),

                    ),
                  ),
                )

              ],)

            ],),
        ))
      ],
    ),
    );
  }

}