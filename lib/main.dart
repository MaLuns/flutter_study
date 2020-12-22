/*
 * @Author: ml
 * @Date: 2020-12-21 09:26:24
 * @LastEditors: ml
 * @LastEditTime: 2020-12-22 16:20:13
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:flutter_study/components/list_title.dart';
import 'package:flutter_study/models/list_model.dart';
import 'package:flutter_study/views/basic_widgets_demo.dart';
import 'package:flutter_study/views/grid_view_demo.dart';
import 'package:flutter_study/views/list_view_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Name',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        highlightColor: Color.fromRGBO(0, 0, 0, 0),
        splashColor: Color.fromRGBO(0, 0, 0, .1),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFf7f7f7),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter'),
          elevation: 0.0,
        ),
        body: WidgetStudy(),
      ),
    );
  }
}

final List<ListModel> listModel = [
  ListModel(
    title: '基础组件',
    subtitle: '常用基础组件',
    icon: Icons.unfold_more,
    route: BasicWidgetsDemo(),
  ),
  ListModel(
    title: 'ListView 组件',
    subtitle: '列表滚动组件',
    icon: Icons.layers_outlined,
    route: ListViewDemo(),
  ),
  ListModel(
    title: 'GridView 组件',
    subtitle: '多个子元素',
    icon: Icons.grid_view,
    route: GridViewDemo(),
  ),
];

class WidgetStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTitleComponent(listModel);
  }
}
