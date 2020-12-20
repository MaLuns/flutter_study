import 'package:flutter/material.dart';

class BasicIconDemo extends StatelessWidget {
  final List iconList = [
    ListIcons.li,
    ListIcons.boluo,
    ListIcons.shanzu,
    ListIcons.putao,
    ListIcons.xihongshi,
    ListIcons.juzhi,
    ListIcons.lanmei,
    ListIcons.nimeng,
    ListIcons.pinguo,
    ListIcons.xigua,
  ];
  final List nzIconList = [
    Icons.ten_k,
    Icons.ten_mp,
    Icons.eleven_mp,
    Icons.twelve_mp,
    Icons.thirteen_mp,
    Icons.fourteen_mp,
    Icons.fifteen_mp,
    Icons.sixteen_mp,
    Icons.seventeen_mp,
    Icons.eighteen_mp,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          color: Colors.blue,
          child:
              Text('内置图标', style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        GridView.builder(
          itemCount: nzIconList.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 1 / 1,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.black12,
              child: Center(
                child: Icon(
                  nzIconList[index],
                  size: 30,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          color: Colors.blue,
          child: Text('自定义图标',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1.下载好图标文件'),
              Text('2.加入在项目中'),
              Text('3.在pubspec.yaml中引入字体文件ttf(不同版本的flutter可能有差异)'),
              Text('4.编写自定义 IconData 类型'),
              Text(
                  '5.IconData(0xe611, fontFamily: \'IconFont\')  IconFont:是引入时候设置字体名称,0xe611 为对应图标的Unicode'),
            ],
          ),
        ),
        GridView.builder(
          itemCount: iconList.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 1 / 1,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.black12,
              child: Center(
                child: Icon(
                  iconList[index],
                  size: 30,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

// 自定义图标
class ListIcons {
  static const IconData li = IconData(0xe611, fontFamily: 'IconFont');
  static const IconData boluo = IconData(0xe613, fontFamily: 'IconFont');
  static const IconData shanzu = IconData(0xe614, fontFamily: 'IconFont');
  static const IconData putao = IconData(0xe615, fontFamily: 'IconFont');
  static const IconData xihongshi = IconData(0xe617, fontFamily: 'IconFont');
  static const IconData juzhi = IconData(0xe618, fontFamily: 'IconFont');
  static const IconData liulian = IconData(0xe619, fontFamily: 'IconFont');
  static const IconData lanmei = IconData(0xe61a, fontFamily: 'IconFont');
  static const IconData caomei = IconData(0xe61b, fontFamily: 'IconFont');
  static const IconData mugua = IconData(0xe61c, fontFamily: 'IconFont');
  static const IconData nimeng = IconData(0xe61e, fontFamily: 'IconFont');
  static const IconData pinguo = IconData(0xe61f, fontFamily: 'IconFont');
  static const IconData xigua = IconData(0xe620, fontFamily: 'IconFont');
}
