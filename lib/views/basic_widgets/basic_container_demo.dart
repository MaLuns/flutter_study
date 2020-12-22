import 'package:flutter/material.dart';
import 'package:flutter_study/components/h2_title.dart';

class BasicContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        H2Title(title: '容器 Container'),
        Container(
          color: Colors.black12,
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Container(
            constraints: BoxConstraints.expand(height: 150, width: 145),
            decoration: BoxDecoration(
              //背景装饰
              gradient: RadialGradient(
                //背景径向渐变
                colors: [Color(0xff38acfa), Color(0xff88acfa)],
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
            /*  alignment: Alignment.center, */ //卡片内文字居中
            child: Text(
              "Container",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ),
      ],
    );
  }
}
