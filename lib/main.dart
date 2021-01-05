/*
 * @Author: ml
 * @Date: 2020-12-21 09:26:24
 * @LastEditors: ml
 * @LastEditTime: 2021-01-05 14:27:10
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'demo_app/study_app/routes.dart';

void main() {
  runApp(MyApp());
  //设置状态栏透明
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Study',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        highlightColor: Color.fromRGBO(0, 0, 0, 0),
        splashColor: Color.fromRGBO(0, 0, 0, .1),
      ),
      routes: routes,
      initialRoute: '/',
    );
  }
}
