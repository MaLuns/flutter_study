import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';
import 'package:flutter_study/demo_app/study_app/components/list_title.dart';
import 'package:flutter_study/demo_app/study_app/models/list_model.dart';
import 'package:flutter_study/demo_app/study_app/views/custom_widget/canvas_clip_demo.dart';
import 'package:flutter_study/demo_app/study_app/views/custom_widget/canvas_darw_demo.dart';

class CustomWidgetDemo extends StatelessWidget {
  final List<ListModel> listModel = [
    ListModel(
      title: '绘制',
      subtitle: '画布的绘制方式',
      icon: Icons.scatter_plot_outlined,
      route: CanvasDarwDemo(),
    ),
    ListModel(
      title: '裁剪',
      subtitle: '裁剪画布形状',
      icon: Icons.scatter_plot_outlined,
      route: CanvasClipDemo(),
    ),
    ListModel(
      title: 'RenderObject',
      subtitle: '实现RenderObject',
      icon: Icons.scatter_plot_outlined,
      route: CanvasClipDemo(),
    ),
  ];

  Widget build(BuildContext context) {
    return BasiceAppLayout(
      title: '画布',
      body: ListTitleComponent(listModel),
      pl: 0,
      pr: 0,
    );
  }
}
