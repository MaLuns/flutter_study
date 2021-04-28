import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';
import 'package:flutter_study/demo_app/study_app/components/h2_title.dart';

class TransitionDemo extends StatefulWidget {
  @override
  _TransitionDemoState createState() => _TransitionDemoState();
}

class _TransitionDemoState extends State<TransitionDemo> {
  double heihgt = 100;
  Color color = Colors.yellow[800];
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint('执行父build');
    return BasiceAppLayout(
      title: '隐式动画',
      pl: 0,
      pr: 0,
      body: ListView(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: heihgt,
            color: color,
            margin: EdgeInsets.all(8),
            child: Center(
              child: Text(
                'AnimatedContainer',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: DemoImplicitlyAnimatedWidget(
              duration: Duration(milliseconds: 300),
              color: color,
              height: heihgt,
              child: Center(
                child: Text(
                  '自定义隐式动画',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: CupertinoButton(
              color: Colors.blue,
              child: Text('更新动画'),
              onPressed: () {
                setState(() {
                  if (heihgt == 100) {
                    heihgt = 200;
                    color = Colors.blue;
                  } else {
                    heihgt = 100;
                    color = Colors.yellow[800];
                  }
                });
              },
            ),
          ),
          H2Title(title: 'TweenAnimationBuilder'),
          TweenAnimationBuilder(
            tween: Tween(end: _count),
            duration: Duration(milliseconds: 300),
            builder: (context, value, child) {
              int count = value ~/ 1;
              double pr = value - count;
              return Container(
                height: 120,
                color: Colors.blue[100],
                child: Stack(
                  children: [
                    Positioned(
                      top: -100 * pr,
                      child: Text(
                        count.toString(),
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                    Positioned(
                      top: 100 - 100 * pr,
                      child: Text(
                        (count + 1).toString(),
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      child: IconButton(
                        icon: Icon(Icons.add),
                        iconSize: 100,
                        onPressed: () {
                          setState(() {
                            _count += 1;
                          });
                        },
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// 扩展隐式动画 基类 ImplicitlyAnimatedWidget
class DemoImplicitlyAnimatedWidget extends ImplicitlyAnimatedWidget {
  final Color color;
  final Widget child;
  final double height;

  DemoImplicitlyAnimatedWidget({
    this.color,
    this.height,
    Curve curve = Curves.linear,
    this.child,
    @required Duration duration,
  }) : super(curve: curve, duration: duration);

  @override
  _DemoImplicitlyAnimatedWidget createState() => _DemoImplicitlyAnimatedWidget();
}

// AnimatedWidgetBaseState 是 ImplicitlyAnimatedWidget 对应状态类
class _DemoImplicitlyAnimatedWidget extends AnimatedWidgetBaseState<DemoImplicitlyAnimatedWidget> {
  ColorTween _color;
  Tween<double> _height;
  @override
  Widget build(BuildContext context) {
    debugPrint('执行动画build');
    return Container(
      color: _color.evaluate(animation),
      height: _height.evaluate(animation),
      child: widget.child,
    );
  }

  @override
  void forEachTween(visitor) {
    _color = visitor(_color, widget.color, (value) => ColorTween(begin: value));
    _height = visitor(_height, widget.height, (value) => Tween<double>(begin: value));
  }
}
