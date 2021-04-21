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
          NotificationListener(
            onNotification: (notification) {
              switch (notification.runtimeType) {
                case ScrollStartNotification:
                  print("开始滚动");
                  break;
                case ScrollUpdateNotification:
                  print('滚动中');
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
                          margin: EdgeInsets.only(left: index == 0 ? 16 : 5, right: index == item.urls.length - 1 ? 16 : 5),
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
                            Text(item.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Text('${item.size}MB  |  ${item.downCount}万次下载', style: TextStyle(color: Colors.black38, fontSize: 10)),
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
                          Text('${item.money} ', style: TextStyle(fontSize: 16)),
                          Text('可币', style: TextStyle(fontSize: 12)),
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
                    children: item.desc.map((e) {
                      return Text(e, style: TextStyle(fontSize: 12, color: Colors.black));
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundImage: NetworkImage(item.avatar)),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.userName),
                            Padding(padding: EdgeInsets.only(top: 2)),
                            Text(item.userDesc, style: TextStyle(color: Colors.black38, fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ),
                      IconButton(icon: Icon(Icons.navigate_next, color: Colors.blue[800]), onPressed: () {}),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  height: 200,
                  child: ListView.builder(
                    itemCount: item.tuJian.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return AspectRatio(
                        aspectRatio: 2 / 3,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 30,
                              child: Container(
                                margin: EdgeInsets.only(left: index == 0 ? 16 : 5, right: index == item.tuJian.length - 1 ? 16 : 5),
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(6),
                                  image: DecorationImage(image: NetworkImage(item.tuJian[index].url), fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 40,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Text(
                                      '试用',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        height: 1,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              left: 16,
                              right: 16,
                              bottom: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.tuJian[index].name,
                                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 6)),
                                  Row(
                                    children: [
                                      Text('${item.tuJian[index].money} 可币', style: TextStyle(fontSize: 10, height: 1, color: Colors.amber[900])),
                                      Padding(padding: EdgeInsets.only(left: 6)),
                                      item.tuJian[index].isVipFree
                                          ? Text(
                                              '会员免费',
                                              style: TextStyle(fontSize: 10, height: 1, color: Colors.black54),
                                            )
                                          : Text('', style: TextStyle(height: 0)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(padding: EdgeInsets.all(16), child: ThemeFlow(data: wallhavenFlowModelData)),
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
                  colors: <Color>[Color.fromRGBO(255, 255, 255, 0), Color.fromRGBO(255, 255, 255, 1)],
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
                Expanded(
                  child: CupertinoButton(
                    color: Colors.blue,
                    child: Text('试用'),
                    onPressed: () {},
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
                Expanded(
                  child: CupertinoButton(
                    color: Colors.blue,
                    child: Text('购买'),
                    onPressed: () {},
                  ),
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
            icon: Icon(Icons.share_outlined),
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
