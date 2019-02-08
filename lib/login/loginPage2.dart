
import 'package:flutter/material.dart';
import 'package:dart_app/login/login-container/login_body.dart';



class loginPage2 extends StatefulWidget {
@override
  State createState(){
    return new loginPageState2();
  }
 
}

class loginPageState2 extends State<loginPage2>{
 @override
  
     Widget build(BuildContext context) {
       final Color backgroundColor1 = Color(0xFF444152);
       final Color backgroundColor2 = Color(0xFF6f6c7d);
       final Color highlightColor = Color(0xfff65aa3);
       final Color foregroundColor = Colors.white;

  return  Scaffold(
    body:  new login_body().GetLoginContainer(context),
   );
     
     
     }

    

     
  

}