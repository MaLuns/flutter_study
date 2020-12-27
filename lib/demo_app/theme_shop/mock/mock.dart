import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/theme_shop/models/list.dart';

// 列表数据
List<ThemeFlowModel> tuijianFlowModelData = [
  ThemeFlowModel(url: 'https://imgpub.chuangkit.com/designTemplate/2017/06/08/11544791_thumb?v=1537952280000&x-oss-process=image/resize,w_600/format,webp', isAd: true),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: true),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7', type: 0, isFree: true),
  ThemeFlowModel(url: 'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 2, isFree: true),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: true),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7', type: 0, isFree: true),
  ThemeFlowModel(url: 'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 2, isFree: true),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: true),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7', type: 0, isFree: true),
  ThemeFlowModel(url: 'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 2, isFree: true),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: true),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7', type: 0, isFree: true),
  ThemeFlowModel(url: 'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 2, isFree: true),
];

List<NavItemViewModel> navItemViewModelData = [
  NavItemViewModel(title: '排行', icon: Icon(Icons.spa, size: 25, color: Colors.red)),
  NavItemViewModel(title: '福利', icon: Icon(Icons.next_week, size: 30, color: Colors.red)),
  NavItemViewModel(title: '最新', icon: Icon(Icons.trending_up, size: 25, color: Colors.red)),
  NavItemViewModel(title: '必看', icon: Icon(Icons.explore_outlined, size: 29, color: Colors.red)),
  NavItemViewModel(title: '话题', icon: Icon(Icons.alternate_email, size: 29, color: Colors.red)),
  NavItemViewModel(title: '排行', icon: Icon(Icons.spa, size: 25, color: Colors.red)),
  NavItemViewModel(title: '福利', icon: Icon(Icons.next_week, size: 30, color: Colors.red)),
  NavItemViewModel(title: '最新', icon: Icon(Icons.trending_up, size: 25, color: Colors.red)),
  NavItemViewModel(title: '必看', icon: Icon(Icons.explore_outlined, size: 29, color: Colors.red)),
  NavItemViewModel(title: '话题', icon: Icon(Icons.alternate_email, size: 29, color: Colors.red)),
];

List<ThemeFlowModel> themeFlowModelData = [
  ThemeFlowModel(url: 'https://imgpub.chuangkit.com/designTemplate/2020/12/18/3d462e6e-8b57-4dcd-9fc2-d06889f0f24d_thumb?v=1608257880000&x-oss-process=image/resize,w_600/format,webp', isAd: true),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.Yav3edM0Nq_Goldmp-DuxgHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.yrBp2fYBYr0J8CWWRQKb7wHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.hrAHB2jwxmKhV1SOuAC_AwHaQC?w=161&h=349&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.T8pmE_LsoDNqnSS1bqv0IwHaN4?w=182&h=342&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.WBqf_X098aDZEB3ICPwfOgHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.RvFVwKnlhRigygmodv3_UwHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 0, isFree: false, money: 3, vipIsFree: false),
];

List<ThemeFlowModel> wallhavenFlowModelData = [
  ThemeFlowModel(url: 'https://imgpub.chuangkit.com/designTemplate/2020/04/20/543930131_thumb?v=1587345600000&x-oss-process=image/resize,w_600/format,webp', isAd: true),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.Yav3edM0Nq_Goldmp-DuxgHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 1, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.yrBp2fYBYr0J8CWWRQKb7wHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 1, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.hrAHB2jwxmKhV1SOuAC_AwHaQC?w=161&h=349&c=7&o=5&pid=1.7', type: 1, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.T8pmE_LsoDNqnSS1bqv0IwHaN4?w=182&h=342&c=7&o=5&pid=1.7', type: 1, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.WBqf_X098aDZEB3ICPwfOgHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 1, isFree: false, money: 3, vipIsFree: false),
  ThemeFlowModel(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.RvFVwKnlhRigygmodv3_UwHaNK?w=187&h=333&c=7&o=5&pid=1.7', type: 1, isFree: false, money: 3, vipIsFree: false),
];
