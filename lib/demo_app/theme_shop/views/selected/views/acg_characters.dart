import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study/demo_app/theme_shop/components/theme_flow.dart';
import 'package:flutter_study/demo_app/theme_shop/mock/mock.dart';

class AcgCharacters extends StatefulWidget {
  final data;
  AcgCharacters({this.data}) : super();

  @override
  _AcgCharactersState createState() => _AcgCharactersState();
}

class _AcgCharactersState extends State<AcgCharacters> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    this.tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              brightness: Brightness.dark,
              pinned: true,
              expandedHeight: 500.0,
              elevation: 0,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(widget.data['title']),
                centerTitle: true,
                background: Container(
                  padding: EdgeInsets.only(top: 80, bottom: 60),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      colors: [
                        Color(0xff555555),
                        Color(0xff000000),
                      ],
                    ),
                  ),
                  child: Image.network(widget.data['url'], fit: BoxFit.fitHeight),
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: StickyTabBarDelegate(
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: this.tabController,
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.white,
                  tabs: <Widget>[
                    Tab(text: '主题'),
                    Tab(text: '字体'),
                    Tab(text: '壁纸'),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: this.tabController,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              child: ThemeFlow(data: tuijianFlowModelData),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: ThemeFlow(data: themeFlowModelData),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: ThemeFlow(data: wallhavenFlowModelData),
            ),
          ],
        ),
      ),
    );
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: this.child,
      color: Colors.black,
      padding: EdgeInsets.only(bottom: 10),
    );
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
