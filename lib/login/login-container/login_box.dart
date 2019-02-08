import 'package:flutter/material.dart';
import 'package:dart_app/home/homePage.dart';

class login_box{
       final Color backgroundColor1 = Color(0xFF444152);
       final Color backgroundColor2 = Color(0xFF6f6c7d);
       final Color highlightColor = Color(0xfff65aa3);
       final Color foregroundColor = Colors.white;

      //获取账号输入框Container
       Container GetAccountContainer(BuildContext context){
         return getBox(context,'',Icons.account_box);
       }
       //获取密码输入框Container
       Container GetPasswordContainer(BuildContext context){
         return getBox(context,'',Icons.lock_open);
       }
      //获取登录按钮Container
       Container GetLoginButton(BuildContext context){
         return new Container(
            width: MediaQuery.of(context).size.width,
            //定义按钮的外边距
            margin: const EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
            //内容位置
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  //一个OutLineButton 实现登录的按钮样式
                  child: new OutlineButton(
                    //按钮的外形
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                        //按钮按下后渐变的颜色
                    color: Colors.blueGrey,
                    highlightedBorderColor: Colors.white,
                    //当点击按钮的时候触发事件，跳转到新的页面
                    onPressed: (){
                           Navigator.push(
                                        context,
                                       new MaterialPageRoute(builder: (context) => new homePage()),
                                        );
                                  },
                                  //按钮内部的内容
                    child: new Container(
                      //按钮内边距定义
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "LOGIN IN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
       }
       

        Container getBox(BuildContext context,String hidentString,IconData icon){

        return new Container(

                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: this.foregroundColor,
                          width: 0.5,
                          style: BorderStyle.solid),
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Padding(
                        padding:
                            EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                        child: Icon(
                          //Icons.alternate_email,
                          icon,
                          color: this.foregroundColor,
                        ),
                      ),
                      new Expanded(
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: hidentString,
                            hintStyle: TextStyle(color: this.foregroundColor),
                          ),
                        ),
                      ),
                    ],
                  ),


              );

      }





}