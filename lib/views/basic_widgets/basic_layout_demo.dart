import 'package:flutter/material.dart';
import 'package:flutter_study/components/h2_title.dart';

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
          children: [1, 2, 3].map((e) {
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
          children: [1, 2, 3].map((e) {
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
              margin: EdgeInsets.symmetric(
                  vertical: 8, horizontal: e == 2 || e == 4 ? 8 : 0),
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
        H2Title(title: '流式布局 Wrap、Flow'),
        Wrap(
          spacing: 8.0, // 主轴(水平)方向间距
          runSpacing: 4.0, // 纵轴（垂直）方向间距
          alignment: WrapAlignment.center, //沿主轴方向居中
          children: [1, 2, 3, 4].map((e) {
            return Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
              label: Text('Hamilton'),
            );
          }).toList(),
        ),
        Container(
          width: 300,
          child: Flow(
            delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
            children: <Widget>[
              new Container(width: 80.0, height: 80.0, color: Colors.red),
              new Container(width: 80.0, height: 80.0, color: Colors.green),
              new Container(width: 80.0, height: 80.0, color: Colors.blue),
              new Container(width: 80.0, height: 80.0, color: Colors.yellow),
              new Container(width: 80.0, height: 80.0, color: Colors.brown),
              new Container(width: 80.0, height: 80.0, color: Colors.purple),
            ],
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
      ],
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(
          i,
          transform: new Matrix4.translationValues(x, y, 0.0),
        );
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)
        context.paintChild(
          i,
          transform: new Matrix4.translationValues(x, y, 0.0),
        );
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  getSize(BoxConstraints constraints) {
    //指定Flow的大小
    return Size(double.infinity, 200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
