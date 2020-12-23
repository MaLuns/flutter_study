import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/components/tab_controller.dart';
import 'package:flutter_study/models/tab_model.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabCoontrollerComponent(
      title: "Sliver",
      tabModels: <TabModel>[
        TabModel(tab: Tab(text: 'SliverGrid'), page: SliverGridDemo()),
        TabModel(tab: Tab(text: '示例二'), page: StllDemo()),
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

class StllDemo extends StatelessWidget {
/*   Widget _viewportBuilder(BuildContext context, position) {
    return ListView();
  } */

  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return CupertinoScrollbar(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str
                .split("")
                .map((c) => Text(c, textScaleFactor: 2.0))
                .toList(),
          ),
        ),
      ),
    );
  }
}
