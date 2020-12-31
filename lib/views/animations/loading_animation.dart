import 'package:flutter/material.dart';

class LoadingAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) => Ball(index)),
    );
  }
}

class Ball extends StatefulWidget {
  final int index;
  Ball(this.index) : super();

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> with SingleTickerProviderStateMixin {
  Animation<double> width;
  Animation<Color> color;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(milliseconds: 250), vsync: this);
    color = ColorTween(begin: Colors.red, end: Colors.yellow).animate(controller);
    width = Tween<double>(begin: 0, end: 20).animate(controller);

    controller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        /*  Future.delayed(Duration(milliseconds: widget.index * 100)).then((value) { */
        controller.forward();
        /*  }); */
      }
      if (status == AnimationStatus.completed) {
        //反向执行动画
        controller.reverse();
      }
    });

    Future.delayed(Duration(milliseconds: widget.index * 450)).then((value) {
      controller.forward();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        return Container(
          height: width.value,
          width: width.value,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: color.value,
            borderRadius: BorderRadius.circular(20),
          ),
        );
      },
    );
  }
}
