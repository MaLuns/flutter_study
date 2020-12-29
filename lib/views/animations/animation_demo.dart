import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> with SingleTickerProviderStateMixin {
  Animation<Color> colorAnimation;
  Animation<double> widthAnimation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    widthAnimation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    colorAnimation = ColorTween(begin: Color.fromRGBO(0, 0, 0, 1), end: Color.fromRGBO(255, 255, 0, 1)).animate(controller)
      ..addListener(() => setState(() => {}))
      ..addStatusListener((status) {
        print(status);
        setState(() => {});
      });

    widthAnimation = Tween(begin: 100.0, end: 300.0).animate(widthAnimation); //..addListener(() => setState(() {}));
    controller.forward();

    /* Test()..aaa()..bbb()..ccc(); */
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GrowTransition(
          child: Container(),
          animation: widthAnimation,
        ),
      ),
    );

    /* return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          child: Container(
            height: widthAnimation.value,
            width: widthAnimation.value,
            color: colorAnimation.value,
          ),
          onTap: () {
            if (controller.status == AnimationStatus.completed) {
              //动画执行结束时反向执行动画
              controller.reverse();
            } else if (controller.status == AnimationStatus.dismissed) {
              //动画恢复到初始状态时执行动画（正向）
              controller.forward();
            }
          },
        ),
      ),
    ); */
  }
}

class GrowTransition extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;

  GrowTransition({this.child, this.animation}) : super();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, index) {
        return Container(
          height: animation.value,
          width: animation.value,
          color: Colors.red,
          child: child,
        );
      },
    );
  }
}

class Test {
  int aaa() {
    print('aaa');
    return 0;
  }

  void bbb() {
    print('bbb');
  }

  void ccc() {
    print('ccc');
  }
}
