import 'package:flutter/material.dart';
import '../../components/h2_title.dart';

class BasicContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        H2Title(title: 'ConstrainedBox 限制大小'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100,
                minHeight: 100.0,
                maxWidth: 300,
              ),
              child: Container(
                height: 5.0,
                width: 100,
                color: Colors.yellow[400],
              ),
            ),
          ],
        ),
        H2Title(title: 'SizedBox 固定宽高'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: Container(
                height: 5.0,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
        H2Title(title: 'UnconstrainedBox 取消限制'),
        UnconstrainedBox(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.red,
          ),
        ),
        H2Title(title: 'DecoratedBox 样式容器'),
        UnconstrainedBox(
          child: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.orange[700]],
                ), //背景渐变
                borderRadius: BorderRadius.circular(3.0), //3像素圆角
                boxShadow: [
                  //阴影
                  BoxShadow(color: Colors.black54, offset: Offset(2.0, 2.0), blurRadius: 4.0)
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
              child: Center(
                child: Text("Login", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
        H2Title(title: 'Clip 裁剪'),
        UnconstrainedBox(
          // 圆形
          child: ClipOval(
            child: Container(
              height: 60,
              width: 60,
              color: Colors.yellow[600],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        UnconstrainedBox(
          // 圆角
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              height: 60,
              width: 60,
              color: Colors.black54,
            ),
          ),
        ),
        H2Title(title: 'AspectRatio 宽高比'),
        AspectRatio(
          aspectRatio: 3 / 1,
          child: Container(
            width: 100,
            color: Colors.black54,
          ),
        ),
        H2Title(title: 'Container 综合'),
        UnconstrainedBox(
          child: Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(bottom: 40),
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
            alignment: Alignment.center, //卡片内文字居中
            child: Text(
              "Container",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ),
        Align()
      ],
    );
  }
}
