import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';

class CanvasDarwDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pl: 0,
      pb: 0,
      pr: 0,
      title: '绘制',
      body: CustomPaint(
        size: MediaQuery.of(context).size, //指定画布大小
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint() //创建一个画笔并配置其属性
      ..isAntiAlias = true //是否抗锯齿
      ..style = PaintingStyle.fill //画笔样式：填充
      ..strokeWidth = 2 // 画笔宽度
      ..color = Color(0xff38acfa); //画笔颜色

    // 线段
    canvas.drawLine(Offset(10, 10), Offset(100, 10), paint);

    // 点
    canvas.drawPoints(
      //PointMode.lines, // 将两个点连成西线
      //PointMode.polygon, // 按顺序连接所有点
      PointMode.points, // 点
      [
        Offset(30, 50),
        Offset(50, 80),
        Offset(120, 80),
        Offset(100, 50),
      ],
      paint
        ..strokeWidth = 10
        ..strokeCap = StrokeCap.round, // 将画笔设置为 圆形
    );

    // 创建一条路径
    Path path = Path();
    path.moveTo(100, 100);
    path.lineTo(200, 200);
    path.lineTo(250, 200);
    path.lineTo(200, 250);
    path.close(); // 闭关
    // 绘制路径 其他的形状都可以使用路径绘制出来
    canvas.drawPath(
        path,
        paint
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2);

    // 绘制矩形
    canvas.drawRect(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: 50,
        ),
        paint);

    canvas.drawRect(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: 40,
        height: 30,
      ),
      paint
        ..color = Colors.red
        ..style = PaintingStyle.fill,
    );

    // 圆角矩形
    canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromCircle(
            center: Offset(size.width / 2, 450),
            radius: 30,
          ),
          Radius.circular(5),
        ),
        paint);

    // 嵌套圆角矩形
    Rect rect1 = Rect.fromCircle(center: Offset(size.width / 2, 550), radius: 40);
    Rect rect2 = Rect.fromCircle(center: Offset(size.width / 2, 550), radius: 50);
    RRect rRect1 = RRect.fromRectAndRadius(rect1, Radius.circular(20));
    RRect rRect2 = RRect.fromRectAndRadius(rect2, Radius.circular(20));
    canvas.drawDRRect(rRect2, rRect1, paint);

    // 圆
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      40,
      paint..style = PaintingStyle.stroke, // 去除填充
    );

    // 椭圆
    Rect rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: 200,
      height: 150,
    );
    canvas.drawOval(rect, paint..color = Colors.green);
    canvas.drawRect(rect, paint); // 绘画处这个矩形 可以看到椭圆是在矩形内的, 如果矩形是正方形就是个圆了

    // 弧线 与椭圆一样的,不过可以设置弧的 开始 和 结束 位置
    canvas.drawArc(
      rect, // 矩形
      0,
      pi / 2,
      true, // 是否连接圆心
      paint..color = Colors.black,
    );

    // 绘制阴影
    canvas.drawShadow(
        Path()
          ..addRect(Rect.fromCenter(
            center: Offset(20, 90),
            width: 20,
            height: 20,
          )), // 绘制阴影的路径
        Colors.red,
        5, //阴影高度
        true);
    canvas.drawRect(
      Rect.fromCenter(
        center: Offset(20, 90),
        width: 20,
        height: 20,
      ),
      paint
        ..color = Colors.red[600]
        ..style = PaintingStyle.fill,
    );

    // 绘制颜色
    canvas.drawColor(Color(0x22ffff02), BlendMode.darken);
  }

  // 是否需要重绘
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
