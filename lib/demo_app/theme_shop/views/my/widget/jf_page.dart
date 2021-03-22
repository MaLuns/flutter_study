import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JFPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      backgroundColor: Color(0xfff3f3f3),
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            /* height: 150, */
            /* decoration: BoxDecoration(
              color: Color(0xff38acfa),
            ), */
            child: CustomPaint(
              size: Size(double.infinity, 200),
              painter: BgView(),
            ),
          ),
          Container(
            height: 500,
            margin: EdgeInsets.only(left: 20, right: 20, top: 120, bottom: 20),
            padding: EdgeInsets.only(left: 20, right: 20, top: 100),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                TextField(
                  maxLines: 1,
                  maxLength: 11,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_iphone),
                    hintText: "请输入手机号",
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
                TextField(
                  maxLines: 1,
                  maxLength: 30,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "请输入手机号",
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '忘记密码?',
                    style: TextStyle(color: Color(0xffaaaaaa)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  child: Center(
                    child: Text(
                      "登录",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff38acfa),
                        Color(0xff88acfa),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '验证码登录',
                      style: TextStyle(color: Color(0xffaaaaaa)),
                    ),
                    Container(
                      height: 12,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: VerticalDivider(
                        color: Colors.black26,
                        width: 0,
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '新用户注册',
                      style: TextStyle(color: Color(0xff38acfa)),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value: true, onChanged: null),
                    Text.rich(
                      TextSpan(
                        text: '我已阅读并同意遵守',
                        style: TextStyle(
                          color: Color(0xff999999),
                        ),
                        children: [
                          TextSpan(
                            text: "<服务协议>",
                            style: TextStyle(
                              color: Color(0xff333333),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: 90),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('asset/images/logo.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BgView extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xff38acfa)
      ..isAntiAlias = true;

    canvas.drawPath(
      Path()
        ..lineTo(0, 0)
        ..lineTo(0, size.height - 30)
        ..cubicTo(0, size.height - 30, size.width / 2, size.height, size.width, size.height - 30)
        ..lineTo(size.width, 0),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
