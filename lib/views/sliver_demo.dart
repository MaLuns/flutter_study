import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_study/components/tab_controller.dart';
import 'package:flutter_study/models/tab_model.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabCoontrollerComponent(
      title: "Sliver",
      tabModels: <TabModel>[
        TabModel(tab: Tab(text: 'SliverGrid'), page: SliverGridDemo()),
        TabModel(tab: Tab(text: '示例二'), page: SliverGridDemoTwo()),
        TabModel(tab: Tab(text: '示例三'), page: Text('示例三')),
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
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            delegate: SliverChildBuilderDelegate(
              (contet, index) => Container(color: Colors.red[200]),
              childCount: 21,
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
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 80,
                color: Colors.black12,
                margin: EdgeInsets.all(8),
              );
            },
            childCount: 5,
          ),
        ),
      ],
    );
  }
}
