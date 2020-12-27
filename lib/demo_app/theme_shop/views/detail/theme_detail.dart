import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeDetailPage extends StatefulWidget {
  @override
  _ThemeDetailPageState createState() => _ThemeDetailPageState();
}

class _ThemeDetailPageState extends State<ThemeDetailPage> {
  Widget renderPageView(context, index) {
    return Container(
      child: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                height: 350,
                child: ListView.builder(
                  itemCount: 3,
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
                          image: DecorationImage(
                            image: NetworkImage('https://tse4-mm.cn.bing.net/th/id/OIP.YkIskMcTBiLONtaag2JgcgHaNK?w=187&h=333&c=7&o=5&pid=1.7'),
                            fit: BoxFit.cover,
                          ),
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
                          Text('彩虹电量恐龙键盘', style: TextStyle(fontSize: 20)),
                          Text('3.1MB | 6.5万次下载', style: TextStyle(color: Colors.black38, fontSize: 10)),
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
                        Text('4.0 ', style: TextStyle(fontSize: 20)),
                        Text('可币'),
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.amber[100],
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(child: Text('会员免费', style: TextStyle(fontSize: 11, color: Colors.black))),
                        ),
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
                    Text('1.xaxasd'),
                    Text('1.xaxasd'),
                    Text('1.xaxasd'),
                    Text('1.xaxasd'),
                    Text('1.xaxasd'),
                    Text('1.xaxasd'),
                    Text('1.xaxasd'),
                  ],
                ),
              ),
              
              Container(
                height: 100,
              ),
            ],
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
        backgroundColor: Colors.white,
        elevation: 0,
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
          itemCount: 3,
          itemBuilder: renderPageView,
          physics: BouncingScrollPhysics(),
          onPageChanged: (index) {
            print(index);
          },
        ),
      ),
    );
  }
}
