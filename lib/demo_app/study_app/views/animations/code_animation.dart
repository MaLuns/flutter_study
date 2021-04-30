import 'dart:math';

import 'package:flutter/material.dart';

class CodeAnimationDemo extends StatefulWidget {
  @override
  _CodeAnimationDemoState createState() => _CodeAnimationDemoState();
}

class _CodeAnimationDemoState extends State<CodeAnimationDemo> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var a = CodeString(MediaQuery.of(context).size.width, MediaQuery.of(context).size.width);
    print(a.str);
    print(a.left);
    print(a.top);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => CustomPaint(
        size: MediaQuery.of(context).size,
        painter: CodeCanvas(),
      ),
    );
  }
}

class CodeCanvas extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CodeString {
  final String _str = 'abcdefghijklmnopqrstuvwxyz';
  String str;
  int top;
  int left;

  CodeString(double width, double height) {
    final _random = new Random();
    str = _str[_random.nextInt(_str.length)];
    left = _random.nextInt(width.toInt());
    top = _random.nextInt(height.toInt());
  }

  void addTop() {
    this.top += 20;
  }
}
