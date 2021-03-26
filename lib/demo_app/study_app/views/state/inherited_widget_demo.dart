import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';
import './provider_demo/basice_data.dart';

class InheritedWidgetDemo extends StatefulWidget {
  @override
  _InheritedWidgetDemoState createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  double count = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint('xxx');
    return BasiceAppLayout(
      pt: 20,
      title: 'InheritedWidget',
      body: ListView(
        children: [
          Container(
            child: BasiceData<CartModel>(
              data: CartModel(),
              child: Container(
                child: Text(BasiceData.of<CartModel>(context).count.toString()),
              ),
            ),
          ),
          RaisedButton(
            child: Text("Conunt +1"),
            onPressed: () {
              BasiceData.of<CartModel>(context).add(1);
            },
          ),
        ],
      ), /* MyInheritedWidget(
        data: count,
        child: Column(
          children: [
            DemoChildOne(),
            RaisedButton(
              child: Text("Conunt +1"),
              //每点击一次，将count自增，然后重新build,ShareDataWidget的data将被更新
              onPressed: () {
                // 因为这个使用了 setState 所有会更新整个组件
                setState(() => ++count);
              },
            ),
          ],
        ),
      ), */
    );
  }
}

// 示例一
class MyInheritedWidget extends InheritedWidget {
  final double data;

  MyInheritedWidget({Key key, @required Widget child, @required this.data}) : super(key: key, child: child);

  static MyInheritedWidget of(BuildContext context) {
    // return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>(); // 会收集依赖 当 状态变更时候 回去调用依赖这个状态的组件 build(),didChangeDependencies()
    return context.getElementForInheritedWidgetOfExactType<MyInheritedWidget>().widget;
    // 不会收集依赖,  因为上面是 InheritedWidgetDemo 中使用了 setState 所有会更新整个组件
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.data != data;
  }
}

class DemoChildOne extends StatefulWidget {
  @override
  _DemoChildOneState createState() => _DemoChildOneState();
}

class _DemoChildOneState extends State<DemoChildOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(MyInheritedWidget.of(context).data.toString()),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // build方法中没有依赖InheritedWidget，此回调不会被调用。
    print("Dependencies change");
  }
}

class CartModel extends PublishSubscribe {
  double count = 0;
  void add(double item) {
    count += item;
    send();
  }
}
