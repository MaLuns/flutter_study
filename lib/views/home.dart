import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/list_title.dart';
import 'package:flutter_study/demo_app/study_app/models/list_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7f7f7),
      appBar: AppBar(
        title: Text("Flutter"),
        centerTitle: true, // 居中
        elevation: 0.0, // 阴影高度
      ),
      body: ListTitleComponent([
        ListModel(
          title: 'Widget',
          subtitle: '基础Widget演示',
          icon: Icons.tag_faces,
          route: 'StudyAppHome',
        ),
        ListModel(
          title: '主题商店',
          subtitle: '仿oppo主题商店布局练习',
          icon: Icons.shop_two,
          route: 'ThemeShopHome',
        ),
        ListModel(
          title: '登录',
          subtitle: '登录页面',
          icon: Icons.login,
          route: 'Login',
        ),
      ]),
    );
  }
}
