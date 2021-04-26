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

List<List<ShopClassifyModel>> shopClassifyModelData = [
  [
    ShopClassifyModel(title: '排行榜', isAd: true, children: [
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.QVnUw1jCOBwHzV09i2jTcAHaEo?w=255&h=180&c=7&o=5&dpr=2&pid=1.7', title: '畅销榜、新品榜、免费榜'),
    ]),
    ShopClassifyModel(title: '为你推荐', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '小清新'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '动漫'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '浅色'),
    ]),
    ShopClassifyModel(title: '内容', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '二次元'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '动漫'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '风景'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '萌宠'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '抽象'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '汽车'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '影视'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '游戏'),
    ]),
    ShopClassifyModel(title: '情感', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '爱情'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '伤感'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '亲情'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '愉悦'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '孤独'),
    ]),
    ShopClassifyModel(title: '颜色', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '深色'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '浅色'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '黑白'),
    ]),
    ShopClassifyModel(title: '创意风格', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '古风'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '可爱风'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '商务风'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '黑白系'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '日系'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '女王范'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '小清晰'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '森系'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '萌系'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '酷炫系'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '非主流'),
    ]),
    ShopClassifyModel(title: '传统', children: [
      ShopClassifyDetail(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.UlirBMdQ5ftADpWyOJLqvAHaNK?w=187&h=333&c=7&o=5&pid=1.7', title: '山青水秀'),
      ShopClassifyDetail(url: 'https://tse4-mm.cn.bing.net/th/id/OIP.tevwpIiw8A03LF6t517PjAHaNK?w=187&h=333&c=7&o=5&pid=1.7', title: '爱情见证'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.65T3iCYcCQvtmE1UY629yAAAAA?w=198&h=315&c=7&o=5&pid=1.7', title: '财源滚滚'),
    ])
  ],
  [
    ShopClassifyModel(title: '排行榜', isAd: true, children: [
      ShopClassifyDetail(url: 'https://tse4-mm.cn.bing.net/th/id/OIP.ID58gGVDK4V-E_3YQp2EeAHaEK?w=329&h=185&c=7&o=5&dpr=2&pid=1.7', title: '畅销榜、新品榜、免费榜'),
    ]),
    ShopClassifyModel(title: '为你推荐', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '古风'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '植物花卉'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '城市人文'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '壮美自然'),
    ]),
    ShopClassifyModel(title: '自然', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '植物花卉'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '城市人文'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '浩瀚星空'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '壮美自然'),
    ]),
    ShopClassifyModel(title: '抽象', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '光影线条'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '缤纷色彩'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '黑白炫酷'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '奇幻想象'),
    ]),
    ShopClassifyModel(title: '人物', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '性感丽人'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '型男美丽'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '萌娃'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '明星写真'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '青纯佳人'),
    ]),
    ShopClassifyModel(title: '萌宠', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '猫咪'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '汪星人'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '野生动物'),
    ]),
    ShopClassifyModel(title: '手绘', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '萌系'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '小清晰'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '游戏'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '艺术'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '治愈系'),
    ]),
    ShopClassifyModel(title: '情感', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '星座'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '爱情'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '意境'),
    ]),
    ShopClassifyModel(title: '动漫', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '古风'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '日漫'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '可爱漫画'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '经典动漫'),
    ]),
  ],
  [
    ShopClassifyModel(title: '排行榜', isAd: true, children: [
      ShopClassifyDetail(url: 'https://tse2-mm.cn.bing.net/th/id/OIP.03Ep6m5A1ifnLWxUyad1KQHaEK?w=329&h=185&c=7&o=5&dpr=2&pid=1.7', title: '畅销榜、新品榜、免费榜'),
    ]),
    ShopClassifyModel(title: '为你推荐', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '常规'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '中国风'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '简体'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '六千字'),
    ]),
    ShopClassifyModel(title: '特色分类', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: 'DIY字体'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '拼音体'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '彩色体'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '明星体'),
    ]),
    ShopClassifyModel(title: '笔体', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '手写'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '楷书'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '行书'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '行楷'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '宋体'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '黑体'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '圆体'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '草书'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '瘦金体'),
    ]),
    ShopClassifyModel(title: '字重', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '常规'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '细体'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '粗体'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '简体'),
    ]),
    ShopClassifyModel(title: '简繁支持', children: [
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.0o5YMzeogFbrHIUMvYw5ZAAAAA?w=291&h=141&c=7&o=5&dpr=2&pid=1.7', title: '简体'),
      ShopClassifyDetail(url: 'https://tse1-mm.cn.bing.net/th/id/OIP.ObUjK6D9yMb71jJ6ctiaVwAAAA?w=260&h=176&c=7&o=5&dpr=2&pid=1.7', title: '繁体'),
      ShopClassifyDetail(url: 'https://tse3-mm.cn.bing.net/th/id/OIP.9Vxt9hn1AQcHM8nwy_QQbgHaEK?w=322&h=181&c=7&o=5&dpr=2&pid=1.7', title: '简体合集'),
    ]),
  ],
];
