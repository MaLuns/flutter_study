import 'package:flutter/material.dart';

class BasicTextDemo extends StatelessWidget {
  final List<Widget> _list = [
    Text(
      '这一段文本, 样式设置的是, 大小是18,字体颜色是白色,字体间隔为2,粗体为800,行高1.8',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        letterSpacing: 2,
        fontWeight: FontWeight.w800,
        height: 1.8,
      ),
    ),
    Text(
      '这一段文字设置为只显示2行超过的文字隐藏,这一段文字设置为只显示2行超过的文字隐藏,这一段文字设置为只显示2行超过的文字隐藏.',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ),
    Text(
      '这段居中',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
    Text(
      '这段居右',
      style: TextStyle(fontSize: 18, color: Colors.white),
      textAlign: TextAlign.right,
    ),
    Text(
      '这段文字设置起始方向',
      style: TextStyle(fontSize: 18, color: Colors.white),
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.start,
    ),
    RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(fontSize: 18, color: Colors.white),
        children: <TextSpan>[
          TextSpan(text: ' 天上'),
          TextSpan(
              text: ' 白玉京',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 20,
              )),
          TextSpan(text: ' ，'),
          TextSpan(text: ' 十二楼五城。'),
          TextSpan(text: '仙人 ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 20)),
          TextSpan(text: '抚我顶，结发受长生。'),
        ],
      ),
    ),
    Text(
      '自定义字体 hello Flutter',
      style: TextStyle(fontFamily: 'Mango', color: Colors.white),
      textAlign: TextAlign.center,
    ),
    Text.rich(
      TextSpan(
        style: TextStyle(fontSize: 18, color: Colors.white),
        children: <TextSpan>[
          TextSpan(text: ' 天上'),
          TextSpan(
              text: ' 白玉京',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 20,
              )),
          TextSpan(text: ' ，'),
          TextSpan(text: ' 十二楼五城。'),
          TextSpan(text: '仙人 ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 20)),
          TextSpan(text: '抚我顶，结发受长生。'),
        ],
      ),
      textAlign: TextAlign.justify,
    )
  ];

  Widget _itemBuilder(context, index) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: _list[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: _itemBuilder,
    );
  }
}
