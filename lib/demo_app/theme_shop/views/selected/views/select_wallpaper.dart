import 'package:flutter/material.dart';

class SelectWallpaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Hero(
        tag: "select_wallpaper",
        child: Stack(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: Image(
                image: NetworkImage('https://tse4-mm.cn.bing.net/th/id/OIP.AGO-olq6kobIxSslFjVkeAHaNK?pid=ImgDet&rs=1'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
