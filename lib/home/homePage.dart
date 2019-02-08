import 'package:flutter/material.dart';


class homePage extends  StatefulWidget{
@override
  State createState(){
    return new homePageState();
  }
}


class homePageState extends State<homePage>{
 @override
  
     Widget build(BuildContext context) {
       final Color backgroundColor1 = Color(0xFF444152);
       final Color backgroundColor2 = Color(0xFF6f6c7d);
       final Color highlightColor = Color(0xfff65aa3);
       final Color foregroundColor = Colors.white;

  return  Scaffold(
    body:  new Container(
      //设置背景颜色
       decoration: new BoxDecoration(
       gradient: new LinearGradient(
          begin: Alignment.centerLeft,
          end: new Alignment(1.0, 0.0), // 10% of the width, so there are ten blinds.
         // begin: Alignment.topLeft,
         // end: new Alignment(9.0, 0.0),
          colors: [backgroundColor1, backgroundColor2], // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
    ),
   );
     
     
     }

    

     
  

}