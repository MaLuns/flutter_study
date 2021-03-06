import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/animated_switcher_demo.dart';
import 'package:flutter_study/demo_app/theme_shop/views/selected/views/acg_characters.dart';
import 'package:flutter_study/demo_app/theme_shop/views/selected/views/select_wallpaper.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ShopSelect extends StatefulWidget {
  @override
  _ShopSelectState createState() => _ShopSelectState();
}

class _ShopSelectState extends State<ShopSelect> {
  List bjjx = [
    {'title': '本周好看', 'desc': '保护动物'},
    {'title': '新品速递', 'desc': '4月14日更新'},
    {'title': '趣玩辑', 'desc': '小组件'},
  ];

  List rmxx = [
    {'title': '丐帮', 'Color': Colors.green[100], 'url': 'https://th.bing.com/th/id/Rae555689b9bf27f3276b4eb7ceb2da2e?rik=2vz6fci0lHxLXg&riu=http%3a%2f%2fi1.sinaimg.cn%2fgm%2fcr%2f2015%2f0214%2f1293245599.png&ehk=5gCTYhqr1oPyAT9pg0%2bN0scn%2f57J%2bhmUbIfJBFovZ2M%3d&risl=&pid=ImgRaw'},
    {'title': '真武', 'Color': Colors.yellow[100], 'url': 'https://th.bing.com/th/id/R6b5a5adaa74abe7bb481613b77cbd07b?rik=DfhxRPk5XEh7qA&riu=http%3a%2f%2fi2.sinaimg.cn%2fgm%2fcr%2f2015%2f0214%2f2988459889.png&ehk=Guo%2fejPbHQ9sBGWfW5SdbcdByn8DQ2zRgxuxkcm24TU%3d&risl=&pid=ImgRaw'},
    {'title': '天香', 'Color': Colors.black12, 'url': 'https://th.bing.com/th/id/R0bc1824383284a9c674ab1f2322ba042?rik=jd11J8FASUK%2blg&riu=http%3a%2f%2fgame.gtimg.cn%2fimages%2fty%2fcp%2fa20200929scmy%2fgirlimg-r.png&ehk=KhCUWlpRUg7ka7IoobU0V74fqJ64kBHR6HGP3%2bWlWGE%3d&risl=&pid=ImgRaw'},
    {'title': '曲无忆', 'Color': Colors.pink[50], 'url': 'https://th.bing.com/th/id/R3dc7bf58d5337249ceecba0e598546d2?rik=6fPrWJHtxkiqew&riu=http%3a%2f%2fpic4.178.com%2f1096%2f10960334%2fmonth_1503%2f4a47a0db285fd.png&ehk=KQzLwmR56%2bKNMbHZ4yd4syUFwrb71igxAV%2b%2fVIXvfYA%3d&risl=&pid=ImgRaw'},
    {'title': '奶妈', 'Color': Colors.blue[100], 'url': 'https://th.bing.com/th/id/Rcc603705a49895a40429ecdfeb2dd301?rik=nxHMxAD54SK4pA&riu=http%3a%2f%2fimage.hnol.net%2fc%2f2016-03%2f01%2f20%2f201603012019388561-2282561.png&ehk=43ZvXIa4qyJuUPC6GLQYCd6cefwrjBkaII9xb8E6Oro%3d&risl=&pid=ImgRaw'},
    {'title': '太白', 'Color': Colors.blueGrey[100], 'url': 'https://th.bing.com/th/id/R9af3c8024dcabd2402b40760ad126482?rik=oQg3cNqcqqNY7g&riu=http%3a%2f%2fwww.acgtubao.com%2fwp-content%2fuploads%2f2019%2f05%2fe9d50bbea723556f1b0c49be139ba5cc08a9f9c4146f09-iXLTXD_fw658.png&ehk=A1IPVMLW8IRZAFzARxwHPRczXYZJkyZPGH%2bxUKMaBTM%3d&risl=&pid=ImgRaw'},
  ];

  List<String> urls = [
    'https://tse1-mm.cn.bing.net/th/id/OIP.nF5TEORYFqDHLe6enlgBDQHaFB?w=262&h=180&c=7&o=5&dpr=2&pid=1.7',
    'https://tse3-mm.cn.bing.net/th/id/OIP.NJW43R8iNiD7HZvd90HgLwHaED?w=296&h=180&c=7&o=5&dpr=2&pid=1.7',
    'https://tse3-mm.cn.bing.net/th/id/OIP.tr6humwC2iBc1HTT1KIhxAHaD8?w=334&h=180&c=7&o=5&dpr=2&pid=1.7',
  ];

  List comments = [
    {'id': '1', 'comment': '你无法比此刻更年轻', 'icon': Icons.access_alarm},
    {'id': '2', 'comment': '敦煌壮士抱戈泣，四面胡笳声转急。', 'icon': Icons.av_timer},
    {'id': '3', 'comment': '找不到路，就自己走一条出来。', 'icon': Icons.camera},
    {'id': '4', 'comment': '不畏浮云遮望眼，只缘身在最高层。', 'icon': Icons.copyright},
    {'id': '5', 'comment': '居高声自远，非是藉秋风。', 'icon': Icons.disc_full},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: DemoDelegate(
              maxHeight: 140,
              minHeight: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              child: Container(
                margin: EdgeInsets.all(20),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Hero(
                      tag: "select_wallpaper", //唯一标记，前后两个路由页Hero的tag必须相同
                      child: Image(
                        image: NetworkImage('https://tse4-mm.cn.bing.net/th/id/OIP.AGO-olq6kobIxSslFjVkeAHaNK?pid=ImgDet&rs=1'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: '12',
                              style: TextStyle(
                                fontSize: 36,
                                color: Colors.white,
                                textBaseline: TextBaseline.ideographic,
                              ),
                            ),
                            TextSpan(
                                text: '  |  壁纸',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        '至今已有18位艺术家展示作品',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        child: Text(
                          '查看全部',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SelectWallpaper()));
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                '编辑精选',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.width,
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 6,
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(20.0),
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                itemBuilder: (context, index) {
                  var item = bjjx[index];
                  return Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: NetworkImage('https://tse3-mm.cn.bing.net/th/id/OIP.QVnUw1jCOBwHzV09i2jTcAHaEo?w=269&h=180&c=7&o=5&dpr=2&pid=1.7'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      color: Color(0x66000000),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item['title'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            item['desc'],
                            style: TextStyle(
                              letterSpacing: 6,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (index) {
                  if (index == 0) {
                    return StaggeredTile.count(6, 2);
                  } else {
                    return StaggeredTile.count(3, 2);
                  }
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                '热门形象',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              margin: EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: rmxx
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AcgCharacters(data: e)));
                        },
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              bottom: 0,
                              child: Container(
                                width: 190,
                                clipBehavior: Clip.antiAlias,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: e['Color'],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Hero(
                              tag: e['url'], //唯一标记，前后两个路由页Hero的tag必须相同
                              child: Image(
                                image: NetworkImage(e['url']),
                                width: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                '大家谈',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(urls[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0x00000000),
                                  Color(0xaa000000),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          right: 0,
                          bottom: 0,
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('#话题：敦煌', style: TextStyle(fontSize: 20, color: Colors.white)),
                              Text('让我们穿越历史，感受1600年前的中华文化', style: TextStyle(fontSize: 14, color: Colors.white)),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 10,
                          bottom: 80,
                          right: 20,
                          child: CommentAnimation(comments: comments),
                        )
                      ],
                    ),
                  );
                },
                loop: false,
                itemCount: urls.length,
                autoplay: false,
                viewportFraction: 1,
              ),
            ),
          ),
          //SliverFillRemaining(),
        ],
      ),
    );
  }
}

class DemoDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;

  DemoDelegate({@required this.maxHeight, @required this.minHeight});

  int makeProgress(shrinkOffset, progress, {start = 0, qf = false}) {
    int alpha = (shrinkOffset / (this.maxExtent - this.minExtent) * progress).clamp(start, progress).toInt();
    if (start == 20) print(shrinkOffset / (this.maxExtent - this.minExtent) * progress);
    if (qf) alpha = progress - alpha + start;
    return alpha;
  }

  Color makeStickyHeaderColor(shrinkOffset, {qf = false, r: 0, g: 0, b: 0}) {
    int alpha = makeProgress(shrinkOffset, 255);
    if (qf) alpha = 255 - alpha;
    return Color.fromARGB(alpha, r, g, b);
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    //print(shrinkOffset);
    return Container(
      height: maxHeight,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            child: Transform.scale(
              scale: makeProgress(shrinkOffset, 100, qf: true) / 100,
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      '小时候',
                      style: TextStyle(
                        fontSize: 36,
                        color: makeStickyHeaderColor(shrinkOffset * 1.2, qf: true),
                      ),
                    ),
                    Text(
                      '岁月留下的童话',
                      style: TextStyle(
                        fontSize: 14,
                        color: makeStickyHeaderColor(shrinkOffset, qf: true, r: 150, g: 150, b: 150),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            top: makeProgress(shrinkOffset, 60, qf: true).toDouble(),
            left: 20,
          ),
          Positioned(
            child: Container(
              height: minHeight,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                '精选',
                style: TextStyle(
                  fontSize: minHeight / 2,
                  color: makeStickyHeaderColor(shrinkOffset),
                ),
              ),
              color: makeStickyHeaderColor(shrinkOffset, r: 255, g: 255, b: 255),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class CommentAnimation extends StatefulWidget {
  final List comments;
  CommentAnimation({this.comments}) : super();
  @override
  _CommentAnimationState createState() => _CommentAnimationState();
}

class _CommentAnimationState extends State<CommentAnimation> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    _timer = Timer.periodic(Duration(milliseconds: 3000), (timer) {
      setState(() {
        var item = widget.comments[0];
        widget.comments.removeAt(0);
        widget.comments.add(item);
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(3, (index) {
        var obj = widget.comments[index];
        return AnimatedSwitcher(
          key: ValueKey(index),
          transitionBuilder: (child, animation) => SlideTransitionX(child: child, direction: AxisDirection.up, position: animation),
          duration: Duration(milliseconds: 300),
          child: Container(
            key: ValueKey(obj['id']),
            alignment: Alignment.centerLeft,
            child: Container(
              height: 30,
              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
              margin: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      obj['icon'],
                      size: 14,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  Text(
                    obj['comment'],
                    style: TextStyle(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
