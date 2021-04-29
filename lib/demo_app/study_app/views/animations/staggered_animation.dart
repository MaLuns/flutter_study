import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';

class StaggeredAnimationDemo extends StatefulWidget {
  @override
  _StaggeredAnimationDemoState createState() => _StaggeredAnimationDemoState();
}

class _StaggeredAnimationDemoState extends State<StaggeredAnimationDemo> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _height;
  Animation<Color> _color;
  Animation<double> _borderRadius;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 5000), vsync: this);

    _height = Tween(begin: 50.0, end: 300.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0, 0.15),
      ),
    );

    _color = ColorTween(begin: Colors.red, end: Colors.blue).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.1, 0.2),
      ),
    );

    _borderRadius = Tween(begin: 10.0, end: 150.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.1, 0.25),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      title: '交织动画',
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              height: _height.value,
              width: _height.value,
              decoration: BoxDecoration(
                color: _color.value,
                borderRadius: BorderRadius.circular(_borderRadius.value),
              ),
            );
          },
        ),
      ),
    );
  }
}
