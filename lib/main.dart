import 'package:flutter/material.dart';
import 'package:dart_app/login/loginPage2.dart';
import 'package:dart_app/home/homePage.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
     
      title:'Beam Utils Home',
       home: new loginPage2()
      // home: new homePage()
    );

  }
}






