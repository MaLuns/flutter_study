import 'package:flutter/widgets.dart';
import 'package:flutter_study/demo_app/study_app/home.dart';
import 'package:flutter_study/demo_app/theme_shop/index.dart';
import 'package:flutter_study/views/home.dart';
import 'package:flutter_study/views/login.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => HomePage(),
  'Login': (context) => LoginPage(),
  'StudyAppHome': (context) => WidgetStudy(),
  'ThemeShopHome': (context) => ThemeShopHome(),
};
