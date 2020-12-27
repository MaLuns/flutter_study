import 'dart:async';

import 'package:flutter/material.dart';

class CarouselCard extends StatefulWidget {
  final List<String> urls;
  CarouselCard({@required this.urls}) : super();
  @override
  _CarouselCardState createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  int currentIndex = 0;
  //轮播图 PageView 使用的控制器
  PageController _pageController;
  //定时器自动轮播
  Timer _timer;

  @override
  void initState() {
    super.initState();
    widget.urls.add(widget.urls[0]);

    _pageController = new PageController(initialPage: currentIndex);

    ///当前页面绘制完第一帧后回调
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      startTimer();
    });
  }

  void startTimer() {
    //间隔两秒时间
    _timer = new Timer.periodic(Duration(milliseconds: 3000), (value) {
      //刷新
      setState(() {
        if (currentIndex + 1 == widget.urls.length) {
          currentIndex = 0;
        } else {
          currentIndex++;
        }
        _pageController.animateToPage(
          currentIndex,
          duration: Duration(milliseconds: 1000),
          curve: Curves.ease,
        );
        if (currentIndex + 1 == widget.urls.length) {
          Future.delayed(Duration(milliseconds: 1000), () {
            setState(() {
              currentIndex = 0;
              _pageController.animateToPage(
                currentIndex,
                duration: Duration(milliseconds: 1),
                curve: Curves.ease,
              );
            });
          });
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  void _onPageChanged(index) {
    /*  print(index);
    _timer.cancel();
    startTimer();
    setState(() {}); */
  }

  // 渲染滚动项目
  Widget renderItemBuilder(context, index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage(widget.urls[index]),
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Stack(
        children: [
          PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: _pageController,
            itemCount: widget.urls.length,
            itemBuilder: renderItemBuilder,
            onPageChanged: _onPageChanged,
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.urls.length - 1, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: (currentIndex == index || widget.urls.length - 1 == currentIndex && index == 0) ? Colors.red : Colors.white),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
