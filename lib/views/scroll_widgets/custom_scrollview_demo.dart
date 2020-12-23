import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_study/components/tab_controller.dart';
import 'package:flutter_study/models/tab_model.dart';

class CustomScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabCoontrollerComponent(
      title: "CustomScrollView",
      tabModels: <TabModel>[
        TabModel(tab: Tab(text: 'SliverGrid'), page: SliverGridDemo()),
        TabModel(tab: Tab(text: 'SliverList'), page: SliverGridDemoTwo()),
        TabModel(tab: Tab(text: '示例三'), page: SliverGroupDemo()),
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
              (contet, index) => Image(
                  image: NetworkImage(
                      'https://tse2-mm.cn.bing.net/th/id/OIP.OHOL_R6gSOmqhHYFy9UiwgHaNK?pid=Api&rs=1')),
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
class SliverGroupDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        //AppBar，包含一个导航栏
        SliverAppBar(
          pinned: true,
          expandedHeight: 150.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('SliverAppBar'),
            centerTitle: true,
            background: Image.network(
              "https://tse2-mm.cn.bing.net/th/id/OIP.x3jJk72UtU2-nQrisUpitAHaEK?w=329&h=185&c=7&o=5&pid=1.7",
              fit: BoxFit.cover,
            ),
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
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            //创建列表项
            return Container(
              alignment: Alignment.center,
              color: Colors.lightBlue[100 * (index % 9)],
              child: Text('list item $index'),
            );
          }, childCount: 50 //50个列表项
                  ),
        ),
      ],
    );
  }
}
