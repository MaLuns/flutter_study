import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectWallpaper extends StatelessWidget {
  final List data = [
    {
      'title': '星海',
      'urls': [
        'https://tse4-mm.cn.bing.net/th/id/OIP.AGO-olq6kobIxSslFjVkeAHaNK?pid=ImgDet&rs=1',
        'https://tse4-mm.cn.bing.net/th/id/OIP.JD8d0fX8ZaaK8yTXfvOPYwHaLG?w=197&h=296&c=7&o=5&dpr=2&pid=1.7',
      ]
    },
    {
      'title': '幕影奇形',
      'urls': [
        'https://tse3-mm.cn.bing.net/th/id/OIP.Sjk_ckf-D5Pp1CApyCnU6QHaNK?w=187&h=333&c=7&o=5&dpr=2&pid=1.7',
        'https://tse3-mm.cn.bing.net/th/id/OIP.8kOv1C_H_YNKYzFbNNI5zwHaNK?w=187&h=333&c=7&o=5&dpr=2&pid=1.7',
      ]
    },
    {
      'title': '荒遗之海',
      'urls': [
        'https://tse1-mm.cn.bing.net/th/id/OIP.PvKwFRXwL8KO7PrbP-tXZgHaNK?w=187&h=333&c=7&o=5&dpr=2&pid=1.7',
        'https://tse4-mm.cn.bing.net/th/id/OIP.1jAbKiPNi25cCeAs-qOgmAHaNE?w=188&h=332&c=7&o=5&dpr=2&pid=1.7',
      ]
    },
    {
      'title': '烟火',
      'urls': [
        'https://tse3-mm.cn.bing.net/th/id/OIP.EXNx9RkuUdO4C6t8BwYILAHaKu?w=197&h=286&c=7&o=5&dpr=2&pid=1.7',
        'https://tse3-mm.cn.bing.net/th/id/OIP.PSCsoLCYtzVIgmPCZ7eshAHaNK?w=187&h=333&c=7&o=5&dpr=2&pid=1.7',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    /* Future.delayed(const Duration(milliseconds: 300), () {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    }); */
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        /* backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
      ), */
        body: Stack(
          children: [
            /* PageView(
              physics: PageScrollPhysics(),
              children: data.map((e) => PageImageView(data: e)).toList(),
            ), */
            PageImageView(data: data),
            Positioned(
              left: 20,
              top: 60,
              child: GestureDetector(
                child: Icon(
                  Icons.keyboard_backspace,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Color(0x22000000),
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone_android, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('应用', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.remove_red_eye, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('预览', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.share, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('分享', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('收藏', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.ac_unit, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('简介', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageImageView extends StatefulWidget {
  final List data;
  PageImageView({this.data}) : super();

  @override
  _PageImageViewState createState() => _PageImageViewState();
}

class _PageImageViewState extends State<PageImageView> with SingleTickerProviderStateMixin {
  PageController _outPageController;

  @override
  void initState() {
    super.initState();
    _outPageController = PageController();
  }

  @override
  void dispose() {
    _outPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: OverScrollBehavior(),
      child: PageView.builder(
        physics: ClampingScrollPhysics(),
        controller: _outPageController,
        itemCount: widget.data.length,
        itemBuilder: (context, index) => InnerPageView(
          data: widget.data[index],
          index: index,
          outPageController: _outPageController,
        ),
      ),
    );
  }
}

class InnerPageView extends StatefulWidget {
  final PageController outPageController;
  final data;
  final int index;
  InnerPageView({@required this.data, @required this.outPageController, @required this.index}) : super();
  @override
  _InnerPageViewState createState() => _InnerPageViewState();
}

class _InnerPageViewState extends State<InnerPageView> {
  int innerIndex = 0;
  int len = 0;
  bool flag = false;
  PageController innerPageController;

  @override
  void initState() {
    super.initState();
    len = (widget.data['urls'] as List).length;
    innerPageController = PageController();
  }

  /// 函数节流
  ///
  /// [func]: 要执行的方法
  Function throttle(Future Function() func) {
    if (func == null) {
      return func;
    }
    bool enable = true;
    Function target = () {
      if (enable == true) {
        enable = false;
        func().then((_) {
          enable = true;
        });
      }
    };
    return target;
  }

  @override
  void dispose() {
    innerPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: "select_wallpaper",
          child: NotificationListener<OverscrollNotification>(
            onNotification: (OverscrollNotification notification) {
              if (!flag) {
                if (len == innerIndex + 1) {
                  widget.outPageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
                } else {
                  widget.outPageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
                }
              }
              return true;
            },
            child: PageView.builder(
              physics: ClampingScrollPhysics(),
              controller: innerPageController,
              itemCount: (widget.data['urls'] as List).length,
              onPageChanged: (value) {
                flag = true;
                setState(() {
                  innerIndex = value;
                });
                Future.delayed(Duration(milliseconds: 500), () {
                  flag = false;
                });
              },
              itemBuilder: (context, index) {
                return ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Image(
                    image: NetworkImage(widget.data['urls'][index]),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 100,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              widget.data['title'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 20,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '71'),
                  TextSpan(text: ' ｜ ', style: TextStyle(color: Colors.red)),
                  TextSpan(text: '壁纸'),
                ],
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 120,
          child: Container(
            height: 100,
            width: 300,
            child: Row(
              children: (widget.data['urls'] as List)
                  .asMap()
                  .keys
                  .map(
                    (idx) => GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: innerIndex == idx ? [BoxShadow(color: Colors.white, spreadRadius: 2)] : [],
                        ),
                        child: Image(
                          image: NetworkImage(widget.data['urls'][idx]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        innerPageController.animateToPage(idx, duration: Duration(milliseconds: 300), curve: Curves.ease);
                        setState(() {
                          innerIndex = idx;
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class OverScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return child;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return GlowingOverscrollIndicator(
          child: child,
          showLeading: false,
          showTrailing: false,
          axisDirection: axisDirection,
          color: Colors.red,
        );
    }
    return null;
  }
}
