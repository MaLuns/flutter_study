import 'package:flutter/material.dart';
import 'package:flutter_study/components/basice_app_layout.dart';
import 'package:flutter_study/components/h2_title.dart';
import 'loading_animation.dart';

/* 
* Animation 一个抽象类,它主要的功能是保存动画的插值和状态
* AnimationController 动画控制器,用与控制动画执行
* Animatable 一个抽象类,用于表明动画值范围值,常见子类有 Tween, ColorTween, IntTween 等
  调用 animate 会返回得到一个 Animation
*/

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pl: 0,
      pt: 0,
      pr: 0,
      title: '动画',
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          H2Title(title: '基础示例'),
          AnimationDemoOne(),
          H2Title(title: 'AnimatedWidget'),
          AnimationDemoTwo(),
          H2Title(title: 'AnimatedBuilder'),
          AnimatedBuilderDemo(),
          H2Title(title: '加载动画'),
          LoadingAnimation(),
        ],
      ),
    );
  }
}

// 动画示例1
class AnimationDemoOne extends StatefulWidget {
  @override
  _AnimationDemoOneState createState() => _AnimationDemoOneState();
}

class _AnimationDemoOneState extends State<AnimationDemoOne> with SingleTickerProviderStateMixin {
  // 控制器
  AnimationController controller;
  Animation<double> widthAnimation;

  @override
  void initState() {
    super.initState();

    // 创建动画控制器
    controller = AnimationController(duration: Duration(milliseconds: 500), vsync: this);

    //通过 animate 绑定到动画控制器  返回的是一个Animation，而不是一个Animatable
    widthAnimation = Tween<double>(begin: 100, end: 200).animate(controller)
      // [..]级联操作符 对同一个对像进行一系列的操作 会忽略级联后面执行返回值
      ..addListener(() {
        // 添加监听 手动更新视图
        setState(() {});
      })
      ..addStatusListener((status) {
        // dismissed 动画在起始点停止
        // forward 动画正在正向执行
        // reverse 动画正在反向执行
        // completed 动画在终点停止
        if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
        if (status == AnimationStatus.completed) {
          //反向执行动画
          controller.reverse();
        }
      });

    //正向执行动画
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: widthAnimation.value,
        color: Colors.red[50],
      ),
    );
  }
}

// 动画示例2 使用 AnimatedWidget  不需要自己去 添加addListener
class AnimationDemoTwo extends StatefulWidget {
  @override
  _AnimationDemoTwoState createState() => _AnimationDemoTwoState();
}

class _AnimationDemoTwoState extends State<AnimationDemoTwo> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> widthAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    // 不需要添加 addListener
    widthAnimation = Tween<double>(begin: 0, end: 200).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimationWigeDemo(animation: widthAnimation),
      ],
    );
  }
}

class AnimationWigeDemo extends AnimatedWidget {
  AnimationWigeDemo({Key key, Animation<double> animation}) : super(key: key, listenable: animation);
  // 只能接收 一个 listenable, 也就只能设置一个动画属性

  Widget build(BuildContext context) {
    final Animation<double> widthAnimation = listenable;
    return Container(
      height: 50,
      width: widthAnimation.value,
      color: Colors.red[50],
    );
  }
}

// 动画示例3 使用 AnimatedBuilder
class AnimatedBuilderDemo extends StatefulWidget {
  @override
  _AnimatedBuilderDemoState createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo> with SingleTickerProviderStateMixin {
  // 控制器
  AnimationController controller;
  Animation<double> widthAnimation;
  Animation<double> heightAnimation;
  @override
  void initState() {
    super.initState();

    // 创建动画控制器
    controller = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    widthAnimation = Tween<double>(begin: 0, end: 200).animate(controller);
    heightAnimation = Tween<double>(begin: 0, end: 200).animate(controller);

    // AnimationController 也有继承 Animation 也能进行监听等操作
    controller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
      if (status == AnimationStatus.completed) {
        //反向执行动画
        controller.reverse();
      }
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      /* 
      child参数将会传递给builder方法，如果builder返回一个不依赖于animation的组件，那么这个子控件不会每次都重建，
      child参数可以不设置，但官方建议设置，它在某些情况下可以优化其体验。

      child: Container(
        height: heightAnimation.value,
        width: widthAnimation.value,
        color: Colors.red[50],
      ), */
      animation: controller,
      // 动画值改变时 重新调用builder 构成新组件
      builder: (BuildContext context, Widget child) {
        return Container(
          height: 200,
          child: Center(
            child: Container(
              height: heightAnimation.value,
              width: widthAnimation.value,
              color: Colors.red[50],
            ),
          ),
        );
      },
    );
  }
}
