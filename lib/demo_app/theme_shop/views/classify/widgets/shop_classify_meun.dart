import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/theme_shop/models/list.dart';
import 'package:provider/provider.dart';

class ShopClassifyMenu extends StatefulWidget {
  final List<ShopClassifyModel> data;
  ShopClassifyMenu(this.data) : super();
  @override
  _ShopClassifyMenuState createState() => _ShopClassifyMenuState();
}

class _ShopClassifyMenuState extends State<ShopClassifyMenu> {
  int _index = 0; // 索引
  double _maxScroll = 0; // 滚动区域内容高度
  bool isScroll = true;
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      double top = (MediaQuery.of(context).size.width - 150) / 12 * 5;
      double adtop = (MediaQuery.of(context).size.width - 150) / 2 * 1;
      double occupyHeight = 0.0;
      widget.data.forEach((element) {
        element.top = occupyHeight;
        if (element.isAd) {
          occupyHeight += adtop;
        } else {
          int count = (element.children.length / 2).ceil();
          occupyHeight += 40 + count * (top + 10);
        }
      });
      _maxScroll = occupyHeight;
    });
  }

  void setindex({int index}) {
    if (index != null) {
      setState(() {
        _index = index;
      });
    } else {
      index = 0;
      double _top = _controller.offset;
      double lastheight = 0;
      int _idx = 0;
      widget.data.forEach((element) {
        if (_top >= lastheight && _top < element.top) {
          index = _idx - 1;
        }
        lastheight = element.top;
        _idx++;
      });

      setState(() {
        _index = index;
      });
    }
  }

  void scrollTo(int index) {
    //_controller.jumpTo(widget.data[index].top);
    //print(_controller.position.maxScrollExtent); //竟然是变动的这个值
    //print(widget.data[index].top);
    //print(_controller.position.viewportDimension);
    //double top = widget.data[index].top + _controller.position.viewportDimension > _controller.position.maxScrollExtent ? (_controller.position.maxScrollExtent - _controller.position.viewportDimension) : widget.data[index].top;
    double top = widget.data[index].top + _controller.position.viewportDimension > _maxScroll ? (_maxScroll - _controller.position.viewportDimension) : widget.data[index].top;
    _controller.animateTo(
      top,
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // 左侧
  Widget renderLeftItem(ShopClassifyModel data, int index) {
    return GestureDetector(
      child: Container(
        child: Text('${widget.data[index].title}'),
        alignment: Alignment.center,
        height: 50,
        width: 120,
        padding: EdgeInsets.only(right: 2),
        decoration: BoxDecoration(
          color: _index == index ? Colors.white : Colors.transparent,
          border: Border(
            left: BorderSide(color: _index == index ? Colors.red : Colors.transparent, width: 2),
          ),
        ),
      ),
      onTap: () {
        isScroll = false;
        scrollTo(index);
        setindex(index: index);
      },
    );
  }

  // 右侧
  Widget renderRightItem(ShopClassifyModel data, int index) {
    return data.isAd
        ? AspectRatio(
            aspectRatio: 2 / 1,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(data.children[index].url),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.title, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(data.children[0].title, style: TextStyle(color: Color(0xffeeeeee))),
                ],
              ),
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  data.title,
                  style: TextStyle(
                    fontWeight: _index == index ? FontWeight.w600 : FontWeight.w500,
                  ),
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 6 / 5,
                ),
                itemCount: data.children.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(data.children[index].url),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(data.children[index].title),
                        height: 30,
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  );
                },
              ),
            ],
          );
  }

  // todo 左右拆分成独立的
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          child: ListView.builder(
            itemCount: widget.data.length,
            itemBuilder: (context, index) => renderLeftItem(widget.data[index], index),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: NotificationListener(
              onNotification: (notification) {
                // print(notification.runtimeType ==ScrollStartNotification) //开始滚动
                // print(notification.runtimeType == ScrollUpdateNotification); //滚动中
                // print(notification.runtimeType == ScrollEndNotification); //滚动结束
                if (notification.runtimeType == ScrollUpdateNotification && isScroll) {
                  setindex();
                }
                if (notification.runtimeType == ScrollEndNotification) {
                  isScroll = true;
                }
                return true;
              },
              child: ListView.builder(
                controller: _controller,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.data.length,
                itemBuilder: (context, index) => renderRightItem(widget.data[index], index),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ShopClassifyList with ChangeNotifier {
  final List<ShopClassifyModel> data;
  int index = 0;

  ShopClassifyList({@required this.data});

  void setIndex(int idx) {
    index = idx;
    notifyListeners();
  }

  get shopClassify => data[index];
}

class ShopClassifyTwo extends StatefulWidget {
  final List<ShopClassifyModel> data;
  ShopClassifyTwo({this.data}) : super();

  @override
  _ShopClassifyTwoState createState() => _ShopClassifyTwoState();
}

class _ShopClassifyTwoState extends State<ShopClassifyTwo> {
  double _maxScroll = 0; // 滚动区域内容高度
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      double top = (MediaQuery.of(context).size.width - 150) / 12 * 5;
      double occupyHeight = 0.0;
      widget.data.forEach((element) {
        element.top = occupyHeight;
        int count = (element.children.length / 2).ceil();
        occupyHeight += 40 + count * (top + 10);
      });
      _maxScroll = occupyHeight;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void scrollTo(int index) {
    //_controller.jumpTo(widget.data[index].top);
    //print(_controller.position.maxScrollExtent); //竟然是变动的这个值
    //print(widget.data[index].top);
    //print(_controller.position.viewportDimension);
    //double top = widget.data[index].top + _controller.position.viewportDimension > _controller.position.maxScrollExtent ? (_controller.position.maxScrollExtent - _controller.position.viewportDimension) : widget.data[index].top;
    double top = widget.data[index].top + _controller.position.viewportDimension > _maxScroll ? (_maxScroll - _controller.position.viewportDimension) : widget.data[index].top;
    _controller.animateTo(
      top,
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  // 左侧
  Widget renderLeftItem(ShopClassifyList model, ShopClassifyModel data, int index) {
    return GestureDetector(
      child: Container(
        child: Text('${widget.data[index].title}'),
        alignment: Alignment.center,
        height: 50,
        width: 120,
        padding: EdgeInsets.only(right: 2),
        decoration: BoxDecoration(
          color: model.index == index ? Colors.white : Colors.transparent,
          border: Border(
            left: BorderSide(color: model.index == index ? Colors.red : Colors.transparent, width: 2),
          ),
        ),
      ),
      onTap: () {
        model.setIndex(index);
      },
    );
  }

  // 右侧
  Widget renderRightItem(ShopClassifyList model, ShopClassifyModel data, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          alignment: Alignment.centerLeft,
          child: Text(
            data.title,
            style: TextStyle(
              fontWeight: model.index == index ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 6 / 5,
          ),
          itemCount: data.children.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(data.children[index].url),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  child: Text(data.children[index].title),
                  height: 30,
                  alignment: Alignment.centerLeft,
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ShopClassifyList(data: widget.data),
      child: Row(
        children: [
          Consumer<ShopClassifyList>(
            builder: (context, model, child) => Container(
              width: 120,
              child: ListView.builder(
                itemCount: widget.data.length,
                itemBuilder: (context, index) => renderLeftItem(model, model.data[index], index),
              ),
            ),
          ),
          Consumer<ShopClassifyList>(
            builder: (context, model, child) => Expanded(
              child: Container(
                color: Colors.white,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: NotificationListener(
                  onNotification: (notification) {
                    return true;
                  },
                  child: ListView.builder(
                    controller: _controller,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: model.data.length,
                    itemBuilder: (context, index) => renderRightItem(model, model.data[index], index),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
