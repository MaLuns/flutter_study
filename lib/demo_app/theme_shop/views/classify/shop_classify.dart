import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/theme_shop/mock/mock.dart';
import 'package:flutter_study/demo_app/theme_shop/views/classify/widgets/shop_classify_meun.dart';

class ShopClassify extends StatelessWidget {
  final List<Widget> tabList = [
    Tab(text: '主题'),
    Tab(text: '壁纸'),
    Tab(text: '字体'),
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
          title: Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Color(0xffeeeeee),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 22,
                  color: Colors.black38,
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Expanded(
                  child: Text(
                    '炫酷',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.red[600],
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.red[600],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: tabList,
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            ShopClassifyMenu(shopClassifyModelData[0]),
            ShopClassifyMenu(shopClassifyModelData[1]),
            ShopClassifyMenu(shopClassifyModelData[2]),
          ],
        ),
      ),
    );
  }
}
