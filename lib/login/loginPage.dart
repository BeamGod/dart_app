
import 'package:flutter/material.dart';


class loginPage extends StatefulWidget {
@override
  State createState(){
    return new loginPageState();
  }
 
}

class loginPageState extends State<loginPage>{
 @override
  
     Widget build(BuildContext context) {
       final Color backgroundColor1 = Color(0xFF444152);
       final Color backgroundColor2 = Color(0xFF6f6c7d);
       final Color highlightColor = Color(0xfff65aa3);
       final Color foregroundColor = Colors.white;

  return  Container(
    decoration: new BoxDecoration(
       gradient: new LinearGradient(
          begin: Alignment.centerLeft,
          end: new Alignment(1.0, 0.0), // 10% of the width, so there are ten blinds.
          colors: [backgroundColor1, backgroundColor2], // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),

      height: MediaQuery.of(context).size.height,
      //定义元素
      child:Column(
        children: <Widget>[
          //定义logo 和 logo下面的描述
          new Container(
            //定义内边距中的顶部和底部
              padding: const EdgeInsets.only(top: 150.0, bottom: 50.0),
              //开始通过一个cloum来定义两个Contrainer，分别为logo以及logo下面的描述
              //将图标居中
              child:Center(
                child: new Column(
                  
                  children: <Widget>[
                    //分别定义两个Contrainer来定义界面的图标
                    //定义圆形图标
                    new Container(
                      height: 128.0,
                      width: 128.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        foregroundColor: foregroundColor,
                        radius: 100.0,
                        child: new Text(
                          'B',
                          style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.w100
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: foregroundColor,
                          width: 1.0
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    new Padding(
                      padding: const  EdgeInsets.all(16.0),
                      child: Text(
                        'welcome to Beam utils home',
                        style: TextStyle(
                          color: foregroundColor
                        ),
                      ),
                    )

                  ],

                ),
              ),


          ),
          
          //定义登录框
          //输入账号
          // new Container(
          //   width: MediaQuery.of(context).size.width,
          //   margin: const EdgeInsets.only(left: 40.0, right: 40.0),
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //     //定义边界
          //     border: Border(


          //     )
          //   ),


          // )
          


        ],

      )
      
    );
     }
  

}