import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/theme_shop/models/list.dart';
import 'dart:math';

class ShopClassifyMenu extends StatefulWidget {
  final List<ShopClassifyModel> data;
  ShopClassifyMenu(this.data) : super();
  @override
  _ShopClassifyMenuState createState() => _ShopClassifyMenuState();
}

class _ShopClassifyMenuState extends State<ShopClassifyMenu> {
  int _index = 0;
  double _maxScroll = 0;
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      double top = (MediaQuery.of(context).size.width - 150) / 12 * 5;
      double zyheight = 0.0;
      widget.data.forEach((element) {
        element.top = zyheight;
        int count = (element.children.length / 2).ceil();
        zyheight += 40 + count * (top + 10);
      });
      _maxScroll = zyheight;
    });
    _controller.addListener(() {
      //print(_controller.offset);
      // print(_controller.position.maxScrollExtent); //竟然是变动的这个值
    });
  }

  void scrollTo(int index) {
    //_controller.jumpTo(widget.data[index].top);
    print(_controller.position.maxScrollExtent);
    print(widget.data[index].top);
    print(_controller.position.viewportDimension);
    double top = widget.data[index].top + _controller.position.viewportDimension > _controller.position.maxScrollExtent ? (_controller.position.maxScrollExtent - _controller.position.viewportDimension) : widget.data[index].top;
    //double top = widget.data[index].top + _controller.position.viewportDimension > _maxScroll ? _maxScroll : widget.data[index].top;
    _controller.animateTo(top, duration: const Duration(microseconds: 5000), curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.data[0].top);
    return Row(
      children: [
        Container(
          width: 120,
          child: ListView.builder(
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
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
                  scrollTo(index);
                  setState(() {
                    _index = index;
                  });
                },
              );
            },
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              controller: _controller,
              itemCount: widget.data.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.data[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 6 / 5,
                      ),
                      children: widget.data[index].children
                          .map((e) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(e.url),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(e.title),
                                    height: 30,
                                    alignment: Alignment.centerLeft,
                                  ),
                                ],
                              ))
                          .toList(),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
