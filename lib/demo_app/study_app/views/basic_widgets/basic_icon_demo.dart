import 'package:flutter/material.dart';
import 'package:flutter_study/icon/iconfont.dart';
import '../../components/h2_title.dart';

class BasicIconDemo extends StatelessWidget {
  final List iconList = [
    IconList.android_fill,
    IconList.attachment,
    IconList.backspace_fill,
    IconList.penRuler_fill,
    IconList.audio,
    IconList.zhiwen,
    IconList.orderx_fill,
    IconList.toLeft_fill,
    IconList.basket,
    IconList.orderx_fill,
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
      physics: BouncingScrollPhysics(),
      children: [
        H2Title(title: '内置图标'),
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
        H2Title(title: '自定义图标'),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1.下载好图标文件'),
              Text('2.加入在项目中'),
              Text('3.在pubspec.yaml中引入字体文件ttf(不同版本的flutter可能有差异)'),
              Text('4.编写自定义 IconData 类型'),
              Text('5.IconData(0xe611, fontFamily: \'IconFont\')  IconFont:是引入时候设置字体名称,0xe611 为对应图标的Unicode'),
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
