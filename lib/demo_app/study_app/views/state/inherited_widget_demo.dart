import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';

class InheritedWidgetDemo extends StatefulWidget {
  @override
  _InheritedWidgetDemoState createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  double count = 0;
  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pt: 20,
      title: 'InheritedWidget',
      body: MyInheritedWidget(
        data: count,
        child: Column(
          children: [
            Builder(
              builder: (context) {
                debugPrint('1111');
                return Container(
                  child: Text(MyInheritedWidget.of(context).data.toString()),
                );
              },
            ),
            Builder(
              builder: (context) {
                debugPrint('2222');
                return RaisedButton(
                  child: Text("Conunt +1"),
                  onPressed: () {
                    setState(() => ++count);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// 示例一
class MyInheritedWidget extends InheritedWidget {
  final double data;

  MyInheritedWidget({Key key, @required Widget child, @required this.data}) : super(key: key, child: child);

  static MyInheritedWidget of(BuildContext context, {bool listenable = true}) {
    // return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>(); // 会收集依赖 当 状态变更时候 回去调用依赖这个状态的组件 build(),didChangeDependencies()
    // return  context.getElementForInheritedWidgetOfExactType<MyInheritedWidget>().widget // 不会收集依赖
    return listenable ? context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>() : context.getElementForInheritedWidgetOfExactType<MyInheritedWidget>().widget;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.data != data;
  }
}

// 因为 InheritedWidgetDemo 总使用了setDate 所以导致整个都会更新
// 可以将 MyInheritedWidget 在包裹一层,然后在 InheritedWidgetDemo 使用包裹后的 MyInheritedWidget
// 然后每次更新都只需要更新 MyInheritedWidget 的包裹层, 而 MyInheritedWidget的 child 在 InheritedWidgetDemo 传递进去
// 这样更新的时候 因为 child 是外部传进去的引用,所以并不会全部重新build, 而只会通知有依赖的子组件去执行 build
