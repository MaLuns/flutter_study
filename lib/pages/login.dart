import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int type = 0;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: Duration(milliseconds: 300), value: 0, upperBound: 2, vsync: this);
    CurvedAnimation(parent: _controller, curve: Curves.easeInOutQuart)
      ..addListener(() {
        setState(() {});
      });
    /* _controller.repeat(reverse: true); */
  }

  OutlineInputBorder _getOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0x00000000)),
      borderRadius: BorderRadius.all(
        Radius.circular(3),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget renderPwaLogin() {
    return Container(
      key: ValueKey('renderPwaLogin'),
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
                fontSize: 24,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 16)),
          Center(
            child: Text(
              "You need to identify to sign back in ",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffaaaaaa),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 150)),
          TextField(
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "E - M A I l",
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              fillColor: Color(0xffeeeeee),
              filled: true,
              enabledBorder: _getOutlineInputBorder(),
              focusedBorder: _getOutlineInputBorder(),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "E - M A I l",
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              fillColor: Color(0xffeeeeee),
              filled: true,
              enabledBorder: _getOutlineInputBorder(),
              focusedBorder: _getOutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget renderZwLogin() {
    return Container(
      key: ValueKey('renderZwLogin'),
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
                fontSize: 24,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8)),
          Center(
            child: Text(
              "You need to identify to sign back in ",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffaaaaaa),
              ),
            ),
          )
        ],
      ),
    );
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
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) => FadeTransition(child: child, opacity: animation),
              child: type == 0 ? renderPwaLogin() : renderZwLogin(),
            ),
            Positioned(
              bottom: 75,
              left: 0,
              right: 0,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) => FadeTransition(child: child, opacity: animation),
                child: type == 0
                    ? Center(
                        key: ValueKey(type),
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
                          onTap: () {
                            this._controller.forward();
                            setState(() {
                              type = type == 0 ? 1 : 0;
                            });
                          },
                        ),
                      )
                    : Center(
                        key: ValueKey(type),
                        child: GestureDetector(
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.track_changes,
                              color: Color(0xff5d916d),
                              size: 50,
                            ),
                          ),
                          onTap: () {
                            this._controller.reverse();
                            setState(() {
                              type = type == 0 ? 1 : 0;
                            });
                          },
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BgView extends CustomPainter {
  double progress;
  BgView(this.progress) : super();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xffffffff)
      ..isAntiAlias = true;
    double minHeight = 150; // 最低高度
    double radianHeight = 100; // 弧度高度

    if (progress < 1) {
      /* canvas.drawPath(
        Path()
          ..moveTo(0, (size.height - minHeight) * progress)
          ..lineTo(0, size.height - (minHeight + radianHeight) * (1 - progress))
          ..cubicTo(
            0,
            size.height - (minHeight + radianHeight) * (1 - progress),
            size.width / 2,
            size.height - minHeight * (1 - progress),
            size.width,
            size.height - (minHeight + radianHeight) * (1 - progress),
          )
          ..lineTo(size.width, (size.height - minHeight) * progress)
          ..cubicTo(
            size.width,
            (size.height - minHeight) * progress,
            size.width / 2,
            (size.height - minHeight - radianHeight) * progress,
            0,
            (size.height - minHeight) * progress,
          ),
        paint,
      ); */
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
    } else {
      print((size.height - minHeight) * (progress - 1));
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
