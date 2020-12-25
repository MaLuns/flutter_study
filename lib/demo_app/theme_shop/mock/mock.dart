import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/theme_shop/models/list.dart';

// 列表数据
List<ThemeFlowModel> themeFlowModelData = [
  ThemeFlowModel(
      url:
          'https://tse1-mm.cn.bing.net/th/id/OIP.vovUundTwbS2d6aVlMkFfwHaPZ?w=168&h=350&c=7&o=5&pid=1.7',
      isAd: true),
  ThemeFlowModel(
      url:
          'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 0,
      isFree: false,
      money: 3,
      vipIsFree: false),
  ThemeFlowModel(
      url:
          'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7',
      type: 0,
      isFree: false,
      money: 3),
  ThemeFlowModel(
      url:
          'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 0,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7',
      type: 0,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 2,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 0,
      isFree: false,
      money: 3,
      vipIsFree: false),
  ThemeFlowModel(
      url:
          'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7',
      type: 0,
      isFree: false,
      money: 3),
  ThemeFlowModel(
      url:
          'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 0,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7',
      type: 0,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 2,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 0,
      isFree: false,
      money: 3,
      vipIsFree: false),
  ThemeFlowModel(
      url:
          'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7',
      type: 0,
      isFree: false,
      money: 3),
  ThemeFlowModel(
      url:
          'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 0,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7',
      type: 0,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 2,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 0,
      isFree: false,
      money: 3,
      vipIsFree: false),
  ThemeFlowModel(
      url:
          'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7',
      type: 0,
      isFree: false,
      money: 3),
  ThemeFlowModel(
      url:
          'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 0,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7',
      type: 0,
      isFree: true),
  ThemeFlowModel(
      url:
          'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
      type: 2,
      isFree: true),
];

List<NavItemViewModel> navItemViewModelData = [
  NavItemViewModel(
    title: '排行',
    icon: Icon(Icons.spa, size: 25, color: Colors.red),
  ),
  NavItemViewModel(
    title: '福利',
    icon: Icon(Icons.next_week, size: 30, color: Colors.red),
  ),
  NavItemViewModel(
    title: '最新',
    icon: Icon(Icons.trending_up, size: 25, color: Colors.red),
  ),
  NavItemViewModel(
    title: '必看',
    icon: Icon(Icons.explore_outlined, size: 29, color: Colors.red),
  ),
  NavItemViewModel(
    title: '话题',
    icon: Icon(Icons.alternate_email, size: 29, color: Colors.red),
  ),
  NavItemViewModel(
    title: '排行',
    icon: Icon(Icons.spa, size: 25, color: Colors.red),
  ),
  NavItemViewModel(
    title: '福利',
    icon: Icon(Icons.next_week, size: 30, color: Colors.red),
  ),
  NavItemViewModel(
    title: '最新',
    icon: Icon(Icons.trending_up, size: 25, color: Colors.red),
  ),
  NavItemViewModel(
    title: '必看',
    icon: Icon(Icons.explore_outlined, size: 29, color: Colors.red),
  ),
  NavItemViewModel(
    title: '话题',
    icon: Icon(Icons.alternate_email, size: 29, color: Colors.red),
  ),
];
