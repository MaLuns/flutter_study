import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../components/tab_controller.dart';
import '../../models/tab_model.dart';

class CustomScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabCoontrollerComponent(
      title: "CustomScrollView",
      isScrollable: true,
      tabModels: <TabModel>[
        TabModel(tab: Tab(text: 'SliverGrid'), page: SliverGridDemo()),
        TabModel(tab: Tab(text: 'SliverList'), page: SliverGridDemoTwo()),
        TabModel(tab: Tab(text: 'SliverAppBar'), page: SliverAppBarDemo()),
        TabModel(tab: Tab(text: 'SliverPersistentHeader'), page: StickyDemo()),
      ],
    );
  }
}

// SliverGrid demo
class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(8),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.56,
            ),
            delegate: SliverChildBuilderDelegate(
              (contet, index) => Image(image: NetworkImage('https://tse2-mm.cn.bing.net/th/id/OIP.OHOL_R6gSOmqhHYFy9UiwgHaNK?pid=Api&rs=1')),
              childCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}

// 示例二
class SliverGridDemoTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(8),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            delegate: SliverChildBuilderDelegate(
              (contet, index) => Container(color: Colors.red[200]),
              childCount: 6,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(8),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 80,
                  color: Colors.black12,
                  margin: EdgeInsets.only(bottom: 8),
                );
              },
              childCount: 5,
            ),
          ),
        ),
      ],
    );
  }
}

// 示例三
class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        //AppBar，包含一个导航栏
        SliverAppBar(
          /* floating: true,
          snap: true, */
          pinned: true,
          expandedHeight: 250.0,
          elevation: 0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('SliverAppBar'),
            centerTitle: true,
            background: Image.network("https://tse2-mm.cn.bing.net/th/id/OIP.x3jJk72UtU2-nQrisUpitAHaEK?w=329&h=185&c=7&o=5&pid=1.7", fit: BoxFit.cover),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid(
            //Grid
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //Grid按两列显示
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                //创建子widget
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ),
        //List
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              //创建列表项
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('list item $index'),
              );
            },
            childCount: 50, //50个列表项
          ),
        ),
      ],
    );
  }
}

// 示例四
class StickyDemo extends StatefulWidget {
  StickyDemo({Key key}) : super(key: key);

  @override
  _StickyDemoState createState() => _StickyDemoState();
}

class _StickyDemoState extends State<StickyDemo> with SingleTickerProviderStateMixin {
  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      // ignore: missing_return
      onNotification: (ScrollUpdateNotification notification) {
        setState(() {
          index = notification.metrics.pixels ~/ (50 * 10);
        });
      },
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(index: index),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                  100,
                  (index) => Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text('$index 列'),
                      )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final int index;

  StickyTabBarDelegate({@required this.index});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      child: Text('${index * 10} + 列'),
      height: 50,
      color: Colors.white,
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
