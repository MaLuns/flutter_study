import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/theme_flow.dart';
import '../../mock/mock.dart';
import '../../models/list.dart';

class ThemeDetailPage extends StatefulWidget {
  @override
  _ThemeDetailPageState createState() => _ThemeDetailPageState();
}

class _ThemeDetailPageState extends State<ThemeDetailPage> {
  double _opacity = 1.0;
  int _index = 0;

  List<ThemeWallhavenDetail> data = List.from(themeWallhavenDetailData);

  //
  Widget renderPageView(context, index) {
    ThemeWallhavenDetail item = data[index];
    return Container(
      child: Stack(
        children: [
          NotificationListener<ScrollUpdateNotification>(
            onNotification: (notification) {
              switch (notification.runtimeType) {
                case ScrollStartNotification:
                  print("开始滚动");
                  break;
                case ScrollUpdateNotification:
                  print('notification');
                  break;
                case ScrollEndNotification:
                  print("滚动停止");
                  break;
                case OverscrollNotification:
                  print("滚动到边界");
                  break;
              }
              return false;
            },
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  height: 350,
                  child: ListView.builder(
                    itemCount: item.urls.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return AspectRatio(
                        aspectRatio: 2 / 3,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: NetworkImage(item.urls[index]), fit: BoxFit.cover),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.title, style: TextStyle(fontSize: 20)),
                            Text('${item.size}MB | ${item.downCount}万次下载', style: TextStyle(color: Colors.black38, fontSize: 10)),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(Icons.comment_bank_outlined),
                          Text('评论', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 50)),
                      Column(
                        children: [
                          Icon(Icons.favorite_outline),
                          Text('收藏', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('${item.money} ', style: TextStyle(fontSize: 20)),
                          Text('可币'),
                          item.vipIsFree
                              ? Container(
                                  margin: EdgeInsets.only(left: 16),
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(color: Colors.amber[100], borderRadius: BorderRadius.circular(3)),
                                  child: Center(child: Text('会员免费', style: TextStyle(fontSize: 11, color: Colors.black))),
                                )
                              : Container(),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Row(
                          children: [
                            Expanded(child: Text('会员可免费使用当前装扮哦,快来开通吧', style: TextStyle(fontSize: 12, color: Colors.black))),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.amber[400],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(child: Text('会员免费', style: TextStyle(fontSize: 12, color: Colors.black))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1.xaxasd'),
                      Text('2.xaxasd'),
                      Text('3.xaxasd'),
                      Text('1.xaxasd'),
                      Text('2.xaxasd'),
                      Text('3.xaxasd'),
                      Text('1.xaxasd'),
                      Text('2.xaxasd'),
                      Text('3.xaxasd'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundImage: NetworkImage(item.avatar)),
                      Padding(padding: EdgeInsets.only(left: 16)),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.userName),
                            Text(item.userDesc, style: TextStyle(color: Colors.black38, fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ),
                      IconButton(icon: Icon(Icons.navigate_next), onPressed: () {}),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  height: 200,
                  child: ListView.builder(
                    itemCount: 6,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return AspectRatio(
                        aspectRatio: 2 / 3,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: NetworkImage(item.urls[0]), fit: BoxFit.cover),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: ThemeFlow(data: wallhavenFlowModelData),
                ),
                Container(height: 100),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(255, 255, 255, 0),
                    Color.fromRGBO(255, 255, 255, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                CupertinoButton(
                  color: Colors.blue,
                  child: Text('试用'),
                  onPressed: () {},
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
                CupertinoButton(
                  color: Colors.blue,
                  child: Text('购买'),
                  onPressed: () {},
                ),
                Padding(padding: EdgeInsets.only(right: 20)),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        elevation: 0,
        title: Text(data[_index].title, style: TextStyle(color: Color.fromRGBO(0, 0, 0, _opacity))),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: PageView.builder(
          itemCount: this.data.length,
          itemBuilder: renderPageView,
          physics: BouncingScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              _index = index;
            });
          },
        ),
      ),
    );
  }
}
