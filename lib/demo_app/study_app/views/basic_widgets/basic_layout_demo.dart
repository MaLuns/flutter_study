import 'package:flutter/material.dart';
import '../../components/h2_title.dart';

class BasicLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        H2Title(title: '线性布局 Row、Column'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(" MainAxisAlignment "),
            Text(" spaceBetween "),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" MainAxisAlignment "),
            Text(" center "),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(3, (e) {
            return Container(
              width: 100,
              height: 50,
              color: Colors.black12,
              child: Center(
                child: Text('row'),
              ),
            );
          }).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(3, (e) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              height: 50,
              color: Colors.black12,
              child: Center(
                child: Text('Column'),
              ),
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.black12,
              child: Text("hello world "),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(left: 8),
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
                  children: <Widget>[
                    Text("hello world "),
                    Text("I am Jack "),
                  ],
                ),
              ),
            ),
          ],
        ),
        H2Title(title: '弹性布局 Flex'),
        Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: [1, 2, 3].map((e) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              width: 100,
              height: 50,
              color: Colors.black12,
              child: Center(
                child: Text('Flex'),
              ),
            );
          }).toList(),
        ),
        Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: [1, 2, 3, 4, 5].map((e) {
            Widget w = Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: e == 2 || e == 4 ? 8 : 0),
              width: 40,
              height: 50,
              color: Colors.black12,
              child: Center(
                child: Text(e == 2 || e == 4 ? 'Expanded' : 'Flex'),
              ),
            );
            if (e == 2) {
              return Expanded(
                child: w,
                flex: 2,
              );
            }
            if (e == 4) {
              return Expanded(
                child: w,
                flex: 1,
              );
            }
            return w;
          }).toList(),
        ),
        Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(3, (e) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              height: 50,
              color: Colors.black12,
              child: Center(
                child: Text('vertical'),
              ),
            );
          }).toList(),
        ),
        H2Title(title: '流式布局 Wrap、Flow'),
        Wrap(
          spacing: 8.0, // 主轴(水平)方向间距
          runSpacing: 4.0, // 纵轴（垂直）方向间距
          alignment: WrapAlignment.center, //沿主轴方向居中
          children: List.generate(12, (e) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0xff38acfa),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('tag$e', style: TextStyle(color: Colors.white)),
            );
          }).toList(),
        ),
        Container(
          height: 260,
          child: Flow(
            delegate: TestFlowDelegate(),
            children: List.generate(9, (index) {
              return UnconstrainedBox(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 80,
                  width: 80,
                  color: Colors.red[index * 100],
                ),
              );
            }).toList(),
          ),
        ),
        H2Title(title: '层叠布局 Stack、Positioned'),
        Container(
          margin: EdgeInsets.only(bottom: 8.0),
          height: 120,
          color: Colors.black12,
          child: Stack(
            children: <Widget>[
              Container(
                child: Text("Stack", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                left: 18.0,
                top: 80,
                child: Text("I am Jack"),
              ),
              Positioned(
                top: 36.0,
                left: 200,
                child: Text("Your friend"),
              )
            ],
          ),
        ),
        H2Title(title: '对齐与相对定位'),
        Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(size: 60),
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              height: 120.0,
              width: 120.0,
              child: Align(
                alignment: Alignment(2, 0.0),
                child: Container(
                  color: Colors.red,
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      context.paintChild(i, transform: Matrix4.translationValues(i * 20.0, i * 20.0, 0.0));
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
