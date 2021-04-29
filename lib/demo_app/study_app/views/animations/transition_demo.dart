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
  double _count = 0;
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
                    color = Color(0xff3acafa);
                  } else {
                    heihgt = 100;
                    color = Color(0xff000000);
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

  // 在动画执行时候会每一帧都调用 build
  @override
  Widget build(BuildContext context) {
    debugPrint('执行动画build');
    return Container(
      color: _color.evaluate(animation), //使用evaluate可以获取Tween当前帧的状态值
      height: _height.evaluate(animation),
      child: widget.child,
    );
  }

  //首次build和更新时候会调用，在这里设置动画需要的Tween的开始值和结束值
  @override
  void forEachTween(visitor) {
    //visitor 有三个参数（当前的tween，动画终止状态，一个回调函数（设置下一次的开始值））
    _color = visitor(_color, widget.color, (value) {
      print(value == widget.color);
      return ColorTween(begin: Color(0xffffffff));
    });
    _height = visitor(_height, widget.height, (value) => Tween<double>(begin: value));
  }
}

class RotationTransitionDemo extends StatefulWidget {
  @override
  _RotationTransitionDemoState createState() => _RotationTransitionDemoState();
}

class _RotationTransitionDemoState extends State<RotationTransitionDemo> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    )
      ..drive(Tween(begin: 1, end: 4))
      ..addListener(() {
        print(_controller.value);
      })
      ..addStatusListener((status) {
        // dismissed 动画在起始点停止
        // forward 动画正在正向执行
        // reverse 动画正在反向执行
        // completed 动画在终点停止
        print(status);
      });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotationTransition'),
      ),
      body: Center(
        child: RotationTransition(
          turns: _controller,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
            ),
          ),
        ),
      ),
    );
  }
}
