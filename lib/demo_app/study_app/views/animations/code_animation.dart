import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class CodeAnimationDemo extends StatefulWidget {
  @override
  _CodeAnimationDemoState createState() => _CodeAnimationDemoState();
}

class _CodeAnimationDemoState extends State<CodeAnimationDemo> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    )
      /*  ..drive(CurveTween(
        curve: Interval(0.999, 1.0),
      )) */
      ..repeat();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<CodeString> a = List.generate(1, (index) => CodeString(MediaQuery.of(context).size.width, MediaQuery.of(context).size.width));

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => CustomPaint(
        size: MediaQuery.of(context).size,
        painter: CodeCanvas(a),
      ),
    );
  }
}

class CodeCanvas extends CustomPainter {
  final List<CodeString> str;
  CodeCanvas(this.str) : super();

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < str.length; i++) {
      var item = str[i];
      item.addTop();
      for (int n = 0; n < item.strList.length; n++) {
        TextSpan span = new TextSpan(
          text: item.strList[n],
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 20,
          ),
        );
        TextPainter tp = new TextPainter(
          text: span,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
        );
        tp.layout();
        tp.paint(canvas, Offset(i * 20.0, n * 16.0));
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CodeString {
  final String _str = 'abcdefghijklmnopqrstuvwxyz';

  int left;
  List<String> strList = [];

  CodeString(double width, double height) {
    final _random = new Random();
    List.generate(_random.nextInt(10), (index) => strList.add(_str[_random.nextInt(_str.length)]));
    left = _random.nextInt(width.toInt());
  }

  void addTop() {
    final _random = new Random();
    strList.add(_str[_random.nextInt(_str.length)]);

    if (strList.length > 50) {
      strList.clear();
      //List.generate(_random.nextInt(0), (index) => strList.add(_str[_random.nextInt(_str.length)]));
    }
  }
}
