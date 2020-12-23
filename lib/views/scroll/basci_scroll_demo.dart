import 'package:flutter/material.dart';
import 'package:flutter_study/components/tab_controller.dart';
import 'package:flutter_study/models/tab_model.dart';

class BasicScrollDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabCoontrollerComponent(
      title: '滚动组件',
      isScrollable: true,
      tabModels: [
        TabModel(tab: Tab(text: 'Scrollbar'), page: ScrollbarDemo()),
        TabModel(
            tab: Tab(text: 'ScrollControllerDemo'),
            page: SingleChildScrollViewDemo()),
        TabModel(
            tab: Tab(text: 'ScrollController'), page: ScrollControllerDemo()),
      ],
    );
  }
}

// 滚动条
class ScrollbarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        itemCount: 10,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.yellow[100],
            margin: EdgeInsets.only(bottom: 10),
            child: Center(
              child: Text('滚动条'),
            ),
          );
        },
      ),
    );
  }
}

// 单个子组件
class SingleChildScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "这个滚动组件只有一个子组件,这个滚动组件只有一个子组件";
    return Scrollbar(
      // 显示进度条
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str
                .split("")
                //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Text(
                      c,
                      textScaleFactor: 2.0,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class ScrollControllerDemo extends StatefulWidget {
  @override
  _ScrollControllerDemoState createState() => _ScrollControllerDemoState();
}

// 滚动事件
class _ScrollControllerDemoState extends State<ScrollControllerDemo> {
  var offset = 0;
  var pixels = 0;
  var maxScrollExtent = 0;
  var extentBefore = 0;
  var extentAfter = 0;
  var extentInside = 0;

  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      setState(() {
        offset = _scrollController.offset.floor();
        pixels = _scrollController.position.pixels.floor();
        maxScrollExtent = _scrollController.position.maxScrollExtent.floor();
        extentBefore = _scrollController.position.extentBefore.floor();
        extentAfter = _scrollController.position.extentAfter.floor();
        extentInside = _scrollController.position.extentInside.floor();
      });
    });
  }

  @override
  void dispose() {
    // 销毁 ScrollController
    _scrollController.dispose();
    super.dispose();
  }

  void backTop() {
    //返回到顶部时执行动画
    _scrollController.animateTo(
      .0,
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
    );
    // 跳转到 300处
    // _scrollController.jumpTo(300);
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        itemCount: 8,
        physics: BouncingScrollPhysics(),
        controller: _scrollController,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: backTop,
            child: Container(
              height: 200,
              color: index.isEven ? Colors.red[50] : Colors.yellow[50],
              margin: EdgeInsets.only(bottom: 10),
              child: Center(
                child: Text(''' 
点击返回顶部
当前位置[offset]: $offset 
当前位置[pixels]: $pixels
最大可滚动长度[maxScrollExtent]: $maxScrollExtent
滑出屏幕上面长度[extentBefore]: $extentBefore
列表视口长度[extentInside]: $extentInside
未滑入屏幕长度[extentAfter]: $extentAfter
                  '''),
              ),
            ),
          );
        },
      ),
    );
  }
}
