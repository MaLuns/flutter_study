import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';

class AnimatedSwitcherDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pl: 0,
      pt: 0,
      pr: 0,
      pb: 0,
      title: 'AnimatedSwitcher',
      body: ListView(
        children: [
          AnimatedSwitcherDemoOne(1),
          AnimatedSwitcherDemoOne(2),
        ],
      ),
    );
  }
}

class AnimatedSwitcherDemoOne extends StatefulWidget {
  final int type;
  AnimatedSwitcherDemoOne(this.type) : super();
  @override
  _AnimatedSwitcherDemoOneState createState() => _AnimatedSwitcherDemoOneState();
}

class _AnimatedSwitcherDemoOneState extends State<AnimatedSwitcherDemoOne> {
  bool _count = false;

  Widget renderLoginChild() {
    return Container(
      key: ValueKey('widget-demo1'), // 切换得组件需要指定key标识唯一
      height: 50,
      color: Colors.red[100],
      child: Center(
        child: Text('组件1'),
      ),
    );
  }

  Widget renderRegChild() {
    return Container(
      key: ValueKey('widget-demo2'),
      height: 50,
      color: Colors.blue[100],
      child: Center(
        child: Text('组件2'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            //这里得 child 参数 是 AnimatedSwitcher 入参 child 的应用,  需要返回一个组件
            //执行透明的渐变 ,  也可以使用自定义 AnimatedWidget
            if (widget.type == 1) {
              return FadeTransition(child: child, opacity: animation);
            } else {
              // 使用自己实现动画
              return SlideTransitionX(child: child, direction: AxisDirection.left, position: animation);
            }
          },
          child: _count ? renderLoginChild() : renderRegChild(),
        ),
        RaisedButton(
          child: const Text(
            '切换组件',
          ),
          onPressed: () {
            setState(() {
              _count = !_count;
            });
          },
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class SlideTransitionX extends AnimatedWidget {
  SlideTransitionX({
    Key key,
    @required Animation<double> position,
    this.transformHitTests = true,
    this.direction = AxisDirection.down,
    this.child,
  })  : assert(position != null),
        super(key: key, listenable: position) {
    // 偏移在内部处理
    switch (direction) {
      case AxisDirection.up:
        _tween = Tween(begin: Offset(0, 1), end: Offset(0, 0));
        break;
      case AxisDirection.right:
        _tween = Tween(begin: Offset(-1, 0), end: Offset(0, 0));
        break;
      case AxisDirection.down:
        _tween = Tween(begin: Offset(0, -1), end: Offset(0, 0));
        break;
      case AxisDirection.left:
        _tween = Tween(begin: Offset(1, 0), end: Offset(0, 0));
        break;
    }
  }

  Animation<double> get position => listenable;

  final bool transformHitTests;

  final Widget child;

  //退场（出）方向
  final AxisDirection direction;

  Tween<Offset> _tween;

  @override
  Widget build(BuildContext context) {
    Offset offset = _tween.evaluate(position);
    if (position.status == AnimationStatus.reverse) {
      switch (direction) {
        case AxisDirection.up:
          offset = Offset(offset.dx, -offset.dy);
          break;
        case AxisDirection.right:
          offset = Offset(-offset.dx, offset.dy);
          break;
        case AxisDirection.down:
          offset = Offset(offset.dx, -offset.dy);
          break;
        case AxisDirection.left:
          offset = Offset(-offset.dx, offset.dy);
          break;
      }
    }
    return FractionalTranslation(
      translation: offset,
      transformHitTests: transformHitTests,
      child: child,
    );
  }
}
