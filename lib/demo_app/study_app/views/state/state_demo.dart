import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';
import 'package:flutter_study/demo_app/study_app/components/list_title.dart';
import 'package:flutter_study/demo_app/study_app/models/list_model.dart';
import 'package:flutter_study/demo_app/study_app/views/state/inherited_widget_demo.dart';

class StateDemo extends StatefulWidget {
  @override
  _StateDemoState createState() => _StateDemoState();
}

class _StateDemoState extends State<StateDemo> {
  final List<ListModel> listModel = [
    ListModel(
      title: 'InheritedWidget',
      subtitle: '实现跨组件传递数据',
      icon: Icons.scatter_plot_outlined,
      route: InheritedWidgetDemo(),
    ),
  ];

  Widget build(BuildContext context) {
    return BasiceAppLayout(
      title: '动画',
      body: ListTitleComponent(listModel),
      pl: 0,
      pr: 0,
    );
  }
}
