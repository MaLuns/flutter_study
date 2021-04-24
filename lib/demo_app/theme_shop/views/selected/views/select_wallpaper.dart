import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectWallpaper extends StatelessWidget {
  final List data = [
    {
      'title': '星海',
      'urls': [
        'https://tse4-mm.cn.bing.net/th/id/OIP.AGO-olq6kobIxSslFjVkeAHaNK?pid=ImgDet&rs=1',
        'https://tse4-mm.cn.bing.net/th/id/OIP.JD8d0fX8ZaaK8yTXfvOPYwHaLG?w=197&h=296&c=7&o=5&dpr=2&pid=1.7',
      ]
    },
    {
      'title': '幕影奇形',
      'urls': [
        'https://tse3-mm.cn.bing.net/th/id/OIP.Sjk_ckf-D5Pp1CApyCnU6QHaNK?w=187&h=333&c=7&o=5&dpr=2&pid=1.7',
        'https://tse3-mm.cn.bing.net/th/id/OIP.8kOv1C_H_YNKYzFbNNI5zwHaNK?w=187&h=333&c=7&o=5&dpr=2&pid=1.7',
      ]
    },
    {
      'title': '荒遗之海',
      'urls': [
        'https://tse1-mm.cn.bing.net/th/id/OIP.PvKwFRXwL8KO7PrbP-tXZgHaNK?w=187&h=333&c=7&o=5&dpr=2&pid=1.7',
        'https://tse4-mm.cn.bing.net/th/id/OIP.1jAbKiPNi25cCeAs-qOgmAHaNE?w=188&h=332&c=7&o=5&dpr=2&pid=1.7',
      ]
    },
    {
      'title': '烟火',
      'urls': [
        'https://tse3-mm.cn.bing.net/th/id/OIP.EXNx9RkuUdO4C6t8BwYILAHaKu?w=197&h=286&c=7&o=5&dpr=2&pid=1.7',
        'https://tse3-mm.cn.bing.net/th/id/OIP.PSCsoLCYtzVIgmPCZ7eshAHaNK?w=187&h=333&c=7&o=5&dpr=2&pid=1.7',
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    /* Future.delayed(const Duration(milliseconds: 300), () {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    }); */
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        /* backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
      ), */
        body: Stack(
          children: [
            PageView(
              physics: ClampingScrollPhysics(),
              children: data.map((e) => PageImageView(data: e)).toList(),
            ),
            Positioned(
              left: 20,
              top: 60,
              child: GestureDetector(
                child: Icon(
                  Icons.keyboard_backspace,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Color(0x22000000),
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone_android, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('应用', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.remove_red_eye, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('预览', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.share, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('分享', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('收藏', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.ac_unit, color: Colors.white),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Text('简介', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageImageView extends StatefulWidget {
  final data;
  PageImageView({this.data}) : super();

  @override
  _PageImageViewState createState() => _PageImageViewState();
}

class _PageImageViewState extends State<PageImageView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: "select_wallpaper",
          /* child: PageView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: (widget.data['urls'] as List).length,
            itemBuilder: (context, index) {
              return ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Image(
                  image: NetworkImage(widget.data['urls'][index]),
                  fit: BoxFit.cover,
                ),
              );
            },
          ), */
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Image(
              image: NetworkImage(widget.data['urls'][index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 100,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              widget.data['title'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 26,
              ),
            ),
          ),
        ),
        Positioned(
          top: 160,
          left: 20,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '71'),
                  TextSpan(text: ' ｜ ', style: TextStyle(color: Colors.red)),
                  TextSpan(text: '壁纸'),
                ],
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 120,
          child: Container(
            height: 100,
            width: 300,
            child: Row(
              children: (widget.data['urls'] as List)
                  .asMap()
                  .keys
                  .map(
                    (idx) => GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: index == idx
                              ? [
                                  BoxShadow(color: Colors.white, spreadRadius: 2),
                                ]
                              : [],
                        ),
                        child: Image(
                          image: NetworkImage(widget.data['urls'][idx]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          index = idx;
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
