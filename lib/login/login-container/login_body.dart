import 'package:flutter/material.dart';
import 'package:dart_app/login/login-container/logo_container.dart';
import 'package:dart_app/login/login-container/login_box.dart';

class login_body{

       final Color backgroundColor1 = Color(0xFF444152);
       final Color backgroundColor2 = Color(0xFF6f6c7d);
       final Color highlightColor = Color(0xfff65aa3);
       final Color foregroundColor = Colors.white;


Container GetLoginContainer(BuildContext context){
       
       return Container(
         //定义body背景颜色 灰色 渐变
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

      height: MediaQuery.of(context).size.height,
      //定义元素
      child:Column(
        children: <Widget>[
          //定义logo 和 logo下面的描述
          new logo_container().GetLoginLogo(),
        //账号输入框
         new login_box().GetAccountContainer(context),
        //密码输入框
         new login_box().GetPasswordContainer(context),
         //登录按钮
          new login_box().GetLoginButton(context),
         
        //  new Container(
        //    padding: EdgeInsets.only(left: 20.0),
        //    //width: 100.0,
        //    alignment: Alignment.topLeft,
        //    child: Text(
        //      'Password',
        //        style: TextStyle(color: foregroundColor,fontSize: 16.0),
        //    ),
        //  )



        ],

      )
      
    );
     

 }

}