import 'package:flutter/material.dart';
import 'package:flutter_study/components/h2_title.dart';

class BasicImageDemo extends StatelessWidget {
  AssetImage img = AssetImage('asset/images/demo.png');

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        H2Title(title: '网络图片'),
        Image(
          image: NetworkImage(
            'https://dev-file.iviewui.com/ttkIjNPlVDuv4lUTvRX8GIlM2QqSe0jg/middle',
          ),
        ),
        H2Title(title: '本地图片'),
        Image(
          image: img,
        ),
        H2Title(title: '常用属性'),
        Column(
          children: [
            Image(
              image: img,
              height: 100.0,
              width: 100.0,
              fit: BoxFit.fill,
            ),
            Image(
              image: img,
              height: 100,
              width: 100.0,
              fit: BoxFit.contain,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.fitWidth,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.fitHeight,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.scaleDown,
            ),
            Image(
              image: img,
              height: 100.0,
              width: 100.0,
              fit: BoxFit.none,
            ),
            Image(
              image: img,
              width: 100.0,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
              fit: BoxFit.fill,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 200.0,
              repeat: ImageRepeat.repeatY,
            )
          ].map((e) {
            return Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 100,
                    child: e,
                  ),
                ),
                Text(e.fit.toString())
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
