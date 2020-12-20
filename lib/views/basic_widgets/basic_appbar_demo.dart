import 'package:flutter/material.dart';

class BasicAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          AppBar(
            title: Text("文字居中"),
            centerTitle: true,
          ),
          SizedBox(height: 16.0),
          AppBar(
            leading: Icon(Icons.menu),
            title: Text("自定义按钮"),
            actions: [
              IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: null),
            ],
          ),
          SizedBox(height: 16.0),
          AppBar(
            automaticallyImplyLeading: false,
            title: Text("去掉阴影和左侧默认按钮"),
            elevation: 0.0,
            actions: [
              IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: null),
            ],
          ),
          SizedBox(height: 16.0),
          Container(
            height: 300,
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: Text("AppBar+TabBar"),
                  centerTitle: true,
                  elevation: 0.0,
                  bottom: TabBar(
                    unselectedLabelColor: Colors.white60,
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 2.0,
                    tabs: <Widget>[
                      Tab(text: 'tab1'),
                      Tab(text: 'tab2'),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    Container(
                      color: Colors.black12,
                      child: Center(child: Text('tab1')),
                    ),
                    Container(
                      color: Colors.yellow[50],
                      child: Center(child: Text('tab2')),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
