import 'package:flutter/material.dart';

class BasicContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints.expand(height: 150, width: 145),
        decoration: BoxDecoration(
          //背景装饰
          gradient: RadialGradient(
            //背景径向渐变
            colors: [Colors.red[200], Colors.orange[200]],
            center: Alignment.topLeft,
            radius: .98,
          ),
          boxShadow: [
            //卡片阴影
            BoxShadow(
              color: Colors.black54,
              offset: Offset(2.0, 2.0),
              blurRadius: 4.0,
            )
          ],
        ),
        transform: Matrix4.rotationZ(.2), //卡片倾斜变换
        //alignment: Alignment.center, //卡片内文字居中
        child: Center(
          child: Text(
            "5.20",
            style: TextStyle(color: Colors.black45, fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
