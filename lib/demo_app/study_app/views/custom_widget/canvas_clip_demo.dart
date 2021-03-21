import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';

class CanvasClipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pl: 0,
      pb: 0,
      pr: 0,
      title: '裁剪',
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 200),
            painter: MyPainter(),
          ),
          CustomPaint(
            size: Size(200, 200),
            painter: MyPainter2(),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRRect(
      RRect.fromRectXY(
        Rect.fromLTWH(size.width / 2 - 50, 50, 100, 100),
        20,
        20,
      ),
      doAntiAlias: false,
    );

    canvas.drawColor(Colors.blue, BlendMode.src);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint _mainPaint = Paint()
      ..color = Colors.yellow[700]
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;

    canvas.clipPath(
      Path()
        ..addOval(
          Rect.fromLTWH(0, 0, 100.0, 100.0),
        ),
      doAntiAlias: false,
    );

    canvas.translate(-0, 0);
    canvas.drawColor(Color(0xffeeeeee), BlendMode.src);

    Path _mainPath = Path();
    _mainPath.relativeMoveTo(0, 60);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeLineTo(0, 60);
    _mainPath.relativeLineTo(-400, 0);

    canvas.drawPath(_mainPath, _mainPaint..color = Colors.red[100]);

    _mainPath = Path();
    _mainPath.relativeMoveTo(-20, 60);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, -10, 40, 0);
    _mainPath.relativeQuadraticBezierTo(20, 10, 40, 0);
    _mainPath.relativeLineTo(0, 60);
    _mainPath.relativeLineTo(-400, 0);

    canvas.drawPath(_mainPath, _mainPaint..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
