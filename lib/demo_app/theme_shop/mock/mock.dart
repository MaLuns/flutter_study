import 'package:flutter/material.dart';
import '../models/list.dart';

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

List<ThemeWallhavenDetail> themeWallhavenDetailData = [
  ThemeWallhavenDetail(
    title: '彩虹电量恐龙键盘',
    desc: ['【主题介绍】：月出惊山鸟，时鸣春涧中。 多背景切换、花瓣特效、云朵动效、月亮特效、充电特效。', '【解锁方式】：任意滑动解锁，双击时间隐藏设置控件。', '【售后QQ群】：使用主题时，有任何问题或建议，欢迎添加售后群11111111，我们会为你答疑解惑~'],
    urls: ['https://tse3-mm.cn.bing.net/th/id/OIP.slUJlz2aR9RIaYPdYW_rnQHaQC?w=161&h=349&c=7&o=5&pid=1.7', 'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7', 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7', 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7'],
    size: 3.1,
    downCount: 2.3,
    money: 3.0,
    userName: '白云苍狗',
    userDesc: '在繁华中沉淀自我，在乱世中静静伫立，一笔一划，雕刻时光',
    tags: ['标签一', '标签二'],
    avatar: 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
    tuJian: [
      TuiJianItem(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7', money: 3, name: '水青', isVipFree: true),
      TuiJianItem(url: 'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7', money: 3, name: '星夜', isVipFree: false),
      TuiJianItem(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7', money: 3, name: '归途', isVipFree: true),
      TuiJianItem(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7', money: 3, name: '最简约', isVipFree: false),
    ],
  ),
  ThemeWallhavenDetail(
    title: '雕刻时光',
    desc: [
      '【主题介绍】：天空渐渐变暗，日落踏着晚霞而来。 多背景、星星特效、月亮特效、文字切换、充电特效。 ',
      '【解锁方式】：任意滑动解锁，双击时间隐藏设置控件',
    ],
    urls: ['https://tse4-mm.cn.bing.net/th/id/OIP.I5fOG4L6Df9U0h--ULRBWgHaNK?w=184&h=328&c=7&o=5&pid=1.7', 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7', 'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7'],
    size: 3.1,
    downCount: 2.3,
    money: 3.0,
    userName: '张三',
    userDesc: '彼岸花花开彼岸，断肠草草断肝肠',
    tags: ['标签一', '标签二'],
    avatar: 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
    tuJian: [
      TuiJianItem(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7', money: 3, name: '水青', isVipFree: true),
      TuiJianItem(url: 'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7', money: 3, name: '星夜', isVipFree: false),
      TuiJianItem(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7', money: 3, name: '归途', isVipFree: true),
      TuiJianItem(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7', money: 3, name: '最简约', isVipFree: false),
    ],
  ),
  ThemeWallhavenDetail(
    title: '一笔一划',
    desc: [
      '【主题介绍】七月的馈赠是温柔的好天气和慢慢变好的自己。 多时间样式、泡泡特效、自定义计划、文字切换、充电特效。',
      '【解锁方式】任意滑动解锁，双击时间隐藏设置控件，提示仅在首次应用时出现一次，点击红绿灯切换时间样式，点击感叹号开启泡泡特效。 ',
    ],
    urls: ['https://tse3-mm.cn.bing.net/th/id/OIP.DP2CZGs5aZ6MnFyB0ZNuMwHaNK?w=184&h=328&c=7&o=5&pid=1.7', 'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7', 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7', 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7'],
    size: 3.1,
    downCount: 2.3,
    money: 3.0,
    userName: '李四',
    userDesc: '很抱歉，前面是单行道，你就乖乖的夹着尾巴耸拉着脑袋返回原点吧！',
    tags: ['标签一', '标签二'],
    avatar: 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7',
    tuJian: [
      TuiJianItem(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7', money: 3, name: '水青', isVipFree: true),
      TuiJianItem(url: 'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7', money: 3, name: '星夜', isVipFree: false),
      TuiJianItem(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.hsvYvDZjKEsyLesyy47FhQHaNK?w=187&h=333&c=7&o=5&pid=1.7', money: 3, name: '归途', isVipFree: true),
      TuiJianItem(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.7NG3CW3Jsl8Yc4DmC9eZBwHaQC?w=161&h=349&c=7&o=5&pid=1.7', money: 3, name: '最简约', isVipFree: false),
    ],
  ),
];
