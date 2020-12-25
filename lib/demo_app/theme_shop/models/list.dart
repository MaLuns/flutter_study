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
