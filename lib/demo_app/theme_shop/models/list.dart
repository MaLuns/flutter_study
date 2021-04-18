import 'package:flutter/material.dart';

class ThemeFlowModel {
  // 背景图
  String url;
  // 类型 0 主题 1壁纸 2字体
  int type;
  // 广告位置
  bool isAd;
  // 是否免费
  bool isFree;
  // 可币
  double money;
  // 会员免费
  bool vipIsFree;
  //
  String get typeName {
    switch (this.type) {
      case 0:
        return '主题';
      case 1:
        return '壁纸';
      case 2:
        return '字体';
      default:
        return '主题';
        break;
    }
  }

  String get tag {
    if (isFree) {
      return '免费';
    } else {
      if (vipIsFree) {
        return '$money 可币 | 会员免费';
      } else {
        return '$money 可币';
      }
    }
  }

  ThemeFlowModel({
    this.url,
    this.type = 0,
    this.isFree = false,
    this.money = 0,
    this.vipIsFree = true,
    this.isAd = false,
  });
}

class NavItemViewModel {
  final Icon icon;
  final String title;
  const NavItemViewModel({
    this.icon,
    this.title,
  });
}

class TuiJianModel {
  String title;
  String desc;
  List<TuiJianItem> list;
  TuiJianModel({this.title, this.desc, this.list});
}

class TuiJianItem {
  String url;
  String name;
  bool isVipFree;
  int money;
  TuiJianItem({this.isVipFree = true, this.money = 3, this.name, this.url});
}

class ThemeWallhavenDetail {
  // 截图
  List<String> urls;
  // 标题
  String title;
  // 描述
  List<String> desc;
  // 大小
  double size;
  // 下载次数
  double downCount;
  // 可币
  double money;
  // 是否免费
  bool isFree;
  // 会员免费
  bool vipIsFree;
  // 标签
  List<String> tags;
  // 用户名称
  String userName;
  // 签名
  String userDesc;
  // 头像
  String avatar;
  // 推荐
  List<TuiJianItem> tuJian;
  ThemeWallhavenDetail({
    @required this.avatar,
    @required this.desc,
    this.isFree = false,
    @required this.money,
    @required this.tags,
    @required this.title,
    @required this.urls,
    @required this.userDesc,
    @required this.userName,
    this.vipIsFree = true,
    @required this.downCount,
    @required this.size,
    @required this.tuJian,
  });
}

class ShopClassifyModel {
  // 标题
  String title;
  List<ShopClassifyDetail> children;
  double top;
  ShopClassifyModel({@required this.title, @required this.children, this.top = 0});
}

class ShopClassifyDetail {
  String url;
  String title;
  ShopClassifyDetail({@required this.url, @required this.title});
}
