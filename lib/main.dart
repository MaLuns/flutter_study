import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study/router/index.dart';

void main() {
  runApp(MyApp());
  //设置状态栏透明
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        highlightColor: Color.fromRGBO(0, 0, 0, 0),
        splashColor: Color.fromRGBO(0, 0, 0, 0),
      ),
      routes: routes,
      initialRoute: '/',
    );
  }
}
