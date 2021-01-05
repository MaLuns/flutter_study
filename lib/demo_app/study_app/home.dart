import 'package:flutter/material.dart';
import './components/list_title.dart';
import './models/list_model.dart';

final List<ListModel> listModel = [
  ListModel(
    title: '基础组件',
    subtitle: '常用基础组件',
    icon: Icons.unfold_more,
    route: 'BasicWidgetsDemo',
  ),
  ListModel(
    title: '可滚动组件',
    subtitle: 'Scrollable',
    icon: Icons.scatter_plot_outlined,
    route: 'ScrollDemo',
  ),
  ListModel(
    title: '事件',
    subtitle: '指针和手势',
    icon: Icons.touch_app,
    route: 'PointerEventDemo',
  ),
  ListModel(
    title: '动画',
    subtitle: '动画示例',
    icon: Icons.animation,
    route: 'AnimationDemo',
  ),
  ListModel(
    title: '主题商店',
    subtitle: '仿oppo主题商店布局练习',
    icon: Icons.shop_two,
    route: 'ThemeShopHome',
  ),
];

class WidgetStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7f7f7),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter'),
        elevation: 0.0,
      ),
      body: ListTitleComponent(listModel),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            SizedBox(), //中间位置空出
            IconButton(icon: Icon(Icons.business), onPressed: () {}),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new Builder(builder: (BuildContext context) {
        return new FloatingActionButton(
          child: const Icon(Icons.add),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          heroTag: null,
          elevation: 2.0,
          highlightElevation: 3.0,
          onPressed: () {},
          mini: false,
          shape: new CircleBorder(),
          isExtended: false,
        );
      }),
    );
  }
}
