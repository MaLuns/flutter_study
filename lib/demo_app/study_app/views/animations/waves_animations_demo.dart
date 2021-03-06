import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';

class WavesAnimations extends StatefulWidget {
  @override
  _WavesAnimationsState createState() => _WavesAnimationsState();
}

class _WavesAnimationsState extends State<WavesAnimations> with SingleTickerProviderStateMixin {
  // 控制器
  AnimationController _controller;
  Animation<double> widthAnimation;

  @override
  void initState() {
    _controller = AnimationController(duration: Duration(seconds: 2), value: 0, vsync: this);
    widthAnimation = Tween<double>(begin: -1, end: 1).animate(_controller);

    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pl: 0,
      pt: 0,
      pr: 0,
      pb: 0,
      title: '波浪动画',
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: widthAnimation,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF1E88E5),
                      Colors.blue[200],
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              builder: (context, child) => ClipPath(
                clipper: WavesClipper(widthAnimation.value),
                child: child,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: AnimatedBuilder(
              animation: widthAnimation,
              builder: (context, child) => CustomPaint(
                size: Size(100, 100),
                painter: MyPainter(_controller.value),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WavesClipper extends CustomClipper<Path> {
  double moveFlag = 0;
  WavesClipper(this.moveFlag) : super();

  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * .5);

    double xCenter = size.width * 0.5 + size.width * 0.5 * sin(moveFlag * pi);
    double yCenter = size.height * 0.5 + 100 * cos(moveFlag * pi);
    path.quadraticBezierTo(xCenter, yCenter, size.width, size.height * .5);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class MyPainter extends CustomPainter {
  double progress;
  MyPainter(this.progress) : super();

  @override
  void paint(Canvas canvas, Size size) {
    double waveWidth = size.width;
    canvas.translate(-2 * waveWidth + 2 * waveWidth * progress, 0);

    print(canvas, size, Colors.yellow[500], -2 * waveWidth + 2 * waveWidth * progress);
    print(canvas, size, Colors.yellow[800], 0);
  }

  void print(Canvas canvas, Size size, Color color, double x) {
    Paint _mainPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    double waveWidth = size.width;
    double wrapHeight = size.height;
    double waveHeight = 6;
    Path _mainPath = Path();

    _mainPath.moveTo(x, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, -waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, -waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, -waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, -waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, -waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, -waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, -waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, -waveHeight * 2, waveWidth, 0);
    _mainPath.relativeQuadraticBezierTo(waveWidth / 2, waveHeight * 2, waveWidth, 0);
    _mainPath.relativeLineTo(0, wrapHeight);
    _mainPath.relativeLineTo(-waveWidth * 8 * 2.0, 0);
    canvas.drawPath(_mainPath, _mainPaint..style = PaintingStyle.fill);
  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
