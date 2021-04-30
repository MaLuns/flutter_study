import 'package:flutter/material.dart';
import '../../components/basice_app_layout.dart';
import '../../components/h2_title.dart';

/* 
* Animation 一个抽象类,它主要的功能是保存动画的插值和状态
* AnimationController 动画控制器,用与控制动画执行
* Animatable 一个抽象类,用于表明动画值范围值,常见子类有 Tween, ColorTween, IntTween 等
  调用 animate 会返回得到一个 Animation
*/

class BasicAnimationDemo extends StatefulWidget {
  @override
  _BasicAnimationDemoState createState() => _BasicAnimationDemoState();
}

class _BasicAnimationDemoState extends State<BasicAnimationDemo> with SingleTickerProviderStateMixin {
  AnimationController _container;
  @override
  void initState() {
    _container = AnimationController(duration: Duration(milliseconds: 10000), vsync: this);
    _container.repeat();

    /* Ticker ticker = Ticker((elapsed) {
      print(elapsed);
    });
    ticker.start(); */
    super.initState();
  }

  @override
  void dispose() {
    _container.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pl: 0,
      pt: 0,
      pr: 0,
      title: '显示动画',
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          H2Title(title: '内置显示动画'),
          RotationTransition(
            turns: _container,
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
          ),
          H2Title(title: '基础示例'),
          AnimationDemoOne(),
          H2Title(title: 'AnimatedWidget'),
          OpacityAnimatedWidget(
            Tween(begin: 1.0, end: .8).animate(_container),
            colorAnimation: ColorTween(begin: Colors.red, end: Colors.blue).animate(_container),
            child: Container(
              height: 300,
              width: 300,
            ),
          ),
          AnimationDemoTwo(),
          H2Title(title: 'AnimatedBuilder'),
          AnimatedBuilderDemo(),
          /* H2Title(title: '加载动画'),
          LoadingAnimation(), */
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
    controller = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);

    //通过 animate 绑定到动画控制器  返回的是一个Animation，而不是一个Animatable
    widthAnimation = Tween<double>(begin: 100, end: 400).animate(controller)
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
    //debugPrint('AnimationDemoOne.build');
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
    controller = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    // 不需要添加 addListener 然后 setState
    widthAnimation = Tween<double>(begin: 0, end: 200).animate(controller);

    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("AnimatedWidget.parent.build");
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
    debugPrint("AnimatedWidget.build");
    final Animation<double> widthAnimation = listenable;
    return Container(
      height: 50,
      width: widthAnimation.value,
      color: Colors.red[50],
    );
  }
}

// 动画示例3 使用 AnimatedBuilder  官方得一个 AnimatedWidget 实现
class AnimatedBuilderDemo extends StatefulWidget {
  @override
  _AnimatedBuilderDemoState createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo> with SingleTickerProviderStateMixin {
  // 控制器
  AnimationController controller;
  Animation<double> widthAnimation;
  Animation<double> heightAnimation;
  Widget _chilid;
  @override
  void initState() {
    super.initState();
    _chilid = getChild();

    // 创建动画控制器
    controller = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    widthAnimation = Tween<double>(begin: 100, end: 200).animate(controller);
    heightAnimation = Tween<double>(begin: 100, end: 200).animate(controller);

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

  Widget getChild() {
    debugPrint('AnimatedBuilder.child.func');
    return ClipRRect(
      child: Image.asset("asset/images/demo.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('AnimatedBuilder.parent.build');
    return AnimatedBuilder(
      /* 
      child参数将会传递给builder方法，如果builder返回一个不依赖于animation的组件，那么这个子控件不会每次都重建，
      child参数可以不设置，但官方建议设置，它在某些情况下可以优化其体验。
      可以看到动画 只有执行 AnimatedBuilder.builder 不会去重置绘制 父的 build

      child: Container(
        height: heightAnimation.value,
        width: widthAnimation.value,
        color: Colors.red[50],
      ), */
      child: _chilid, // 可以将动画的子组件 提取出去
      animation: controller,
      // 动画值改变时 重新调用builder 构成新组件
      builder: (BuildContext context, Widget child /* 这里参数是上面的引用*/) {
        debugPrint('AnimatedBuilder.build');
        return SizedBox(
          height: heightAnimation.value,
          width: widthAnimation.value,
          child: child,
        );
      },
    );
  }
}

// ignore: must_be_immutable
class OpacityAnimatedWidget extends AnimatedWidget {
  final Widget child;
  Animation<Color> colorAnimation;
  OpacityAnimatedWidget(listenable, {this.colorAnimation, this.child}) : super(listenable: listenable);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable;

    return Opacity(
      opacity: animation.value,
      child: Container(
        color: colorAnimation.value,
        child: child,
      ),
    );
  }
}
