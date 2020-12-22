import 'package:flutter/material.dart';
import 'package:flutter_study/components/tab_controller.dart';
import 'package:flutter_study/models/tab_model.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabCoontrollerComponent(
      title: "Sliver",
      tabModels: <TabModel>[
        TabModel(tab: Tab(text: 'SliverGrid'), page: SliverGridOne()),
        TabModel(tab: Tab(text: '示例二'), page: Text('示例二')),
        TabModel(tab: Tab(text: '示例三'), page: Text('示例三')),
      ],
    );
  }
}

class SliverGridOne extends StatelessWidget {
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
              (contet, index) {
                return Container(
                  color: Colors.red[200],
                );
              },
              childCount: 21,
            ),
          ),
        ),
      ],
    );
  }
}
