import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/views/scroll_widgets/reorderable_list_view_demo.dart';
import '../../components/basice_app_layout.dart';
import '../../components/list_title.dart';
import '../../models/list_model.dart';
import './basic_scroll_demo.dart';
import './custom_scrollview_demo.dart';
import './grid_view_demo.dart';
import './list_view_demo.dart';

class ScrollDemo extends StatelessWidget {
  final List<ListModel> listModel = [
    ListModel(
      title: '滚动组件',
      subtitle: '基础属性等',
      icon: Icons.scatter_plot_outlined,
      route: BasicScrollDemo(),
    ),
    ListModel(
      title: 'ListView 组件',
      subtitle: '列表滚动组件',
      icon: Icons.layers_outlined,
      route: ListViewDemo(),
    ),
    ListModel(
      title: 'GridView 组件',
      subtitle: '网格滚动',
      icon: Icons.grid_view,
      route: GridViewDemo(),
    ),
    ListModel(
      title: 'CustomScrollView 组件',
      subtitle: '自定义滚动',
      icon: Icons.exposure_zero,
      route: CustomScrollViewDemo(),
    ),
    ListModel(
      title: 'ReorderableListViewDemo 组件',
      subtitle: '列表排序',
      icon: Icons.exposure_zero,
      route: ReorderableListViewDemo(),
    ),
  ];

  Widget build(BuildContext context) {
    return BasiceAppLayout(
      title: '滚动组件',
      body: ListTitleComponent(listModel),
      pl: 0,
      pr: 0,
    );
  }
}
