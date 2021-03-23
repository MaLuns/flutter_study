import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: Duration(milliseconds: 1000), value: 0, vsync: this);
    _controller
      ..addListener(() {
        setState(() {});
      });
    /* _controller.repeat(reverse: true); */
  }

  OutlineInputBorder _getOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0x00000000)),
      borderRadius: BorderRadius.all(
        Radius.circular(100),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      /* backgroundColor: Color(0xfff3f3f3), */
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('asset/images/login.jpg'),
          ),
        ),
        child: Stack(
          children: [
            Container(
              child: CustomPaint(
                size: MediaQuery.of(context).size,
                painter: BgView(_controller.value),
              ),
            ),
            Positioned(
              bottom: 75,
              left: 0,
              right: 0,
              child: Center(
                child: GestureDetector(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff007b45),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    if (this._controller.status == AnimationStatus.dismissed) {
                      this._controller.forward();
                    }
                    if (this._controller.status == AnimationStatus.completed) {
                      //反向执行动画
                      this._controller.reverse();
                    }
                  },
                ),
              ),
            )
            /*  Container(
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
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    fillColor: Color(0xffeeeeee),
                    filled: true,
                    enabledBorder: _getOutlineInputBorder(),
                    focusedBorder: _getOutlineInputBorder(),
                  ),
                ),
                TextField(
                  maxLines: 1,
                  maxLength: 30,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "请输入密码",
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    fillColor: Color(0xffeeeeee),
                    filled: true,
                    enabledBorder: _getOutlineInputBorder(),
                    focusedBorder: _getOutlineInputBorder(),
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
         */
          ],
        ),
      ),
    );
  }
}

class BgView extends CustomPainter {
  double _jd;
  BgView(this._jd) : super();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xffffffff)
      ..isAntiAlias = true;
    double _height = 150;

    /*  double maxheight = size.height * _jd;
    double minheight = size.height * _jd - _height + 100;
    double centerheight = size.height * _jd - _height; */

    /* canvas.drawPath(
      Path()
        ..lineTo(0, 0)
        ..lineTo(0, size.height - _height - 100)
        ..cubicTo(0, size.height - _height - 100, size.width / 2, size.height - _height, size.width, size.height - _height - 100)
        ..lineTo(size.width, 0),
      paint,
    ); */

    double maxheight = size.height * _jd;
    double minheight = size.height - (_height * _jd) - 250;
    double centerheight = size.height * _jd - _height;

    print(minheight);

    canvas.drawPath(
      Path()
        ..moveTo(0, maxheight)
        ..lineTo(0, minheight)
        ..cubicTo(0, size.height - _height - 100, size.width / 2, size.height - _height, size.width, size.height - _height - 100)
        ..lineTo(size.width, maxheight),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
