import 'package:flutter/material.dart';
import 'widget/shop_home_push.dart';
import 'widget/shop_home_theme.dart';
import 'widget/shop_home_wallhaven.dart';

class ShopHome extends StatelessWidget {
  final List<Widget> tabList = [
    Tab(text: '推荐'),
    Tab(text: '主题'),
    Tab(text: '壁纸'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: TabBar(
            labelColor: Colors.red[600],
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.red[600],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: tabList,
          ),
          /*  title: Material(
            color: Colors.white,
            child: TabBar(
              labelColor: Colors.red[600],
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.red[600],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2.0,
              tabs: tabList,
            ),
          ), */
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            ShopHomePush(),
            ShopHomeTheme(),
            ShopHomeWallhaven(),
          ],
        ),
      ),
    );
  }
}
