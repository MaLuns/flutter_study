import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int type = 0;
  double minHeight = 150;
  double radianHeight = 100;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 380), value: 0, upperBound: 2, vsync: this);
    CurvedAnimation(parent: _controller, curve: Curves.ease);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void change() {
    if (this._controller.status == AnimationStatus.dismissed) {
      this._controller.forward();
    }
    if (this._controller.status == AnimationStatus.completed) {
      this._controller.reverse();
    }
    setState(() {
      type = type == 0 ? 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Color(0xff5d916d),
        cursorColor: Color(0xff5d916d),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            // 点击其他区域 去除焦点
            FocusScope.of(context).unfocus();
          },
          child: Container(
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
                BgVieAnimatedWidget(minHeight: minHeight, radianHeight: radianHeight, animation: _controller),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  transitionBuilder: (Widget child, Animation<double> animation) => FadeTransition(child: child, opacity: animation),
                  child: type == 0
                      ? PasswordLogin(
                          key: ValueKey('renderPasswordLogin'),
                          typeChange: this.change,
                          minHeight: minHeight,
                          radianHeight: radianHeight,
                        )
                      : FingerprintLogin(
                          key: ValueKey('renderFingerprintLogin'),
                          typeChange: this.change,
                          minHeight: minHeight,
                          radianHeight: radianHeight,
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 用户密码登录
class PasswordLogin extends StatefulWidget {
  final Function typeChange;
  final double minHeight;
  final double radianHeight;

  PasswordLogin({Key key, this.typeChange, this.minHeight = 150, this.radianHeight = 100}) : super(key: key);

  @override
  _PasswordLoginState createState() => _PasswordLoginState();
}

class _PasswordLoginState extends State<PasswordLogin> {
  /* FocusNode focusNode = FocusNode(
    descendantsAreFocusable: false,
    canRequestFocus: false,
    skipTraversal: true,
  ); */

  OutlineInputBorder _getOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0x00000000)),
      borderRadius: BorderRadius.all(
        Radius.circular(3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Stack(
        key: ValueKey('renderPasswordLogin'),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Color(0xff5d916d),
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
                Center(
                  child: Text(
                    "You need to identify to sign back in ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffaaaaaa),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 120)),
                TextField(
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "please input email",
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    fillColor: Color(0xfff3f4f6),
                    filled: true,
                    enabledBorder: _getOutlineInputBorder(),
                    focusedBorder: _getOutlineInputBorder(),
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                  ),
                  //textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
                TextField(
                  maxLines: 1,
                  keyboardType: TextInputType.visiblePassword,
                  /* focusNode: focusNode, */
                  decoration: InputDecoration(
                    hintText: "please input password",
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    fillColor: Color(0xfff3f4f6),
                    filled: true,
                    enabledBorder: _getOutlineInputBorder(),
                    focusedBorder: _getOutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    /* suffixIcon: IconButton(
                    icon: Icon(Icons.fingerprint, color: Color(0xffaaaaaa)),
                    onPressed: () {
                      //focusNode.unfocus();
                      FocusScope.of(context).requestFocus(focusNode);
                      widget.typeChange();
                      return false;
                    },
                  ), */
                  ),
                  /* readOnly: true, */
                  /* showCursor: true, */
                ),
                Padding(padding: EdgeInsets.only(top: 32)),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Color(0xff5d916d), width: 2),
                    ),
                  ),
                  child: Text(
                    'Forgot?',
                    style: TextStyle(
                      color: Color(0xffaaaaaa),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: widget.minHeight + widget.radianHeight / 2,
            child: Center(
              child: GestureDetector(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff5d916d),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ),
          Positioned(
            child: Listener(
              child: IconButton(
                icon: Icon(Icons.fingerprint, color: Color(0xffaaaaaa)),
                onPressed: () {
                  widget.typeChange();
                  return false;
                },
              ),
              behavior: HitTestBehavior.opaque, // 将组件当成不透明 防止事件穿透到下层
            ),
            top: 350,
            right: 20,
          ),
        ],
      ),
    );
  }
}

// 指纹登录
class FingerprintLogin extends StatefulWidget {
  final Function typeChange;
  final double minHeight;
  final double radianHeight;

  FingerprintLogin({Key key, this.typeChange, this.minHeight = 150, this.radianHeight = 100}) : super(key: key);

  @override
  _FingerprintLoginState createState() => _FingerprintLoginState();
}

class _FingerprintLoginState extends State<FingerprintLogin> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Stack(
        key: ValueKey('renderFingerprintLogin'),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Center(
                  child: Text(
                    "You need to identify to sign back in ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffaaaaaa),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: widget.minHeight + widget.radianHeight * 1.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  child: Icon(
                    Icons.fingerprint,
                    color: Color(0xff5d916d),
                    size: 70,
                  ),
                ),
                GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xff5d916d), width: 1),
                        ),
                      ),
                      child: Text(
                        'Use password',
                        style: TextStyle(
                          color: Color(0xffaaaaaa),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    widget.typeChange();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 背景动画
class BgVieAnimatedWidget extends AnimatedWidget {
  final double minHeight;
  final double radianHeight;
  final Animation<double> animation;

  BgVieAnimatedWidget({Key key, this.minHeight = 150, this.radianHeight = 100, @required this.animation}) : super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: BgView(
          progress: animation.value,
          minHeight: minHeight,
          radianHeight: radianHeight,
        ),
      ),
    );
  }
}

class BgView extends CustomPainter {
  double progress;
  double minHeight;
  double radianHeight;
  Color color;

  BgView({
    @required this.progress,
    this.minHeight = 150,
    this.radianHeight = 100,
    this.color = const Color(0xffffffff),
  }) : super();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..isAntiAlias = true;

    if (progress < 1) {
      canvas.drawPath(
        Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height - (minHeight + radianHeight) * (1 - progress))
          ..cubicTo(
            0,
            size.height - (minHeight + radianHeight) * (1 - progress),
            size.width / 2,
            size.height - minHeight * (1 - progress),
            size.width,
            size.height - (minHeight + radianHeight) * (1 - progress),
          )
          ..lineTo(size.width, 0),
        paint,
      );
      // print(size.height - minHeight * (1 - progress));
    } else {
      // print((size.height - minHeight) * (progress - 1));
      canvas.drawPath(
        Path()
          ..moveTo(0, size.height)
          ..lineTo(0, (size.height - minHeight - radianHeight) * (progress - 1))
          ..cubicTo(
            0,
            (size.height - minHeight - radianHeight) * (progress - 1),
            size.width / 2,
            (size.height - minHeight - radianHeight * 2) * (progress - 1),
            size.width,
            (size.height - minHeight - radianHeight) * (progress - 1),
          )
          ..lineTo(size.width, size.height),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
