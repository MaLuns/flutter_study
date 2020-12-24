import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShopHome extends StatelessWidget {
  final List<Widget> tabList = [
    Tab(text: '推荐'),
    Tab(text: '主题'),
    Tab(text: '字体'),
    Tab(text: '壁纸'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Material(
            color: Colors.white,
            child: TabBar(
              labelColor: Colors.red[600],
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.red[600],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2.0,
              tabs: tabList,
            ),
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            DemoBz(),
            Center(child: Text('tab2')),
            Center(child: Text('tab3')),
            Center(child: Text('tab4')),
          ],
        ),
      ),
    );
  }
}

class DemoBz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          height: 30,
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.orange[50],
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 15),
          child: Text(
            '积分免费领, 快来看看 >>',
            style: TextStyle(
              color: Colors.orange[800],
              fontSize: 12,
            ),
          ),
        ),
        Qt(),
        Padding(padding: EdgeInsets.only(top: 20)),
        StaggeredGridViewDemo(),
      ],
    );
  }
}

class Qt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 6,
      itemCount: 5,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // 禁用滚动
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: index == 0 || index == 2 || index == 5
                ? BorderRadius.circular(2)
                : null,
          ),
        );
      },
      staggeredTileBuilder: (int index) {
        if (index == 0) {
          return StaggeredTile.count(2, 4);
        }
        if (index == 1) {
          return StaggeredTile.count(1, 2);
        }
        if (index == 2) {
          return StaggeredTile.count(3, 2);
        }
        if (index == 3) {
          return StaggeredTile.count(2, 2);
        }
        if (index == 4) {
          return StaggeredTile.count(2, 2);
        }
        return StaggeredTile.count(2, 2);
      },
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}

// StaggeredGridView 示例
class StaggeredGridViewDemo extends StatelessWidget {
  final List<String> _url = [
    'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7',
    'https://tse1-mm.cn.bing.net/th/id/OIP.vovUundTwbS2d6aVlMkFfwHaPZ?w=168&h=350&c=7&o=5&pid=1.7',
    'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7',
    'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
    'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7',
    'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
  ];
  Widget renderItem(index) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: NetworkImage(_url[index % 6]),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                color: Colors.black12,
                width: 0.2,
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
              child: Center(
                child: Text(
                  "主题",
                  style: TextStyle(
                    color: Colors.white,
                    height: 1,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
              child: Center(
                child: Text(
                  "3.0 可币 | 会员免费",
                  style: TextStyle(
                    color: Colors.white,
                    height: 1,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        debugPrint(index.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 6,
      itemCount: 50,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // 禁用滚动
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: NetworkImage(
                    'https://tse2-mm.cn.bing.net/th/id/OIP.x3jJk72UtU2-nQrisUpitAHaEK?w=321&h=180&c=7&o=5&pid=1.7'),
                fit: BoxFit.fill,
              ),
            ),
          );
        } else {
          return renderItem(index);
        }
      },
      staggeredTileBuilder: (int index) {
        if (index == 0) {
          return StaggeredTile.count(3, 1);
        } else {
          return StaggeredTile.count(3, 5);
        }
      },
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
    );
  }
}
