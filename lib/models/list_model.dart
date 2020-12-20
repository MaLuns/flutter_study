import 'package:flutter/material.dart';

// 列表组件
class ListModel {
  // 标题
  String title;
  // 图标
  IconData icon;
  // 副标题
  String subtitle;
  // 跳转页面
  Widget route;
  ListModel({this.title, this.icon, this.subtitle, this.route});
}

// 宠物卡片
class PetCardViewModel {
  /// 封面地址
  final String coverUrl;

  /// 用户头像地址
  final String userImgUrl;

  /// 用户名
  final String userName;

  /// 用户描述
  final String description;

  /// 话题
  final String topic;

  /// 发布时间
  final String publishTime;

  /// 发布内容
  final String publishContent;

  /// 回复数量
  final int replies;

  /// 喜欢数量
  final int likes;

  /// 分享数量
  final int shares;

  const PetCardViewModel({
    this.coverUrl,
    this.userImgUrl,
    this.userName,
    this.description,
    this.topic,
    this.publishTime,
    this.publishContent,
    this.replies,
    this.likes,
    this.shares,
  });
}

// 朋友圈卡片
class TalkCardViewModel {
  /// 用户名
  final String userName;

  /// 用户头像地址
  final String userImgUrl;

  /// 说说
  final String saying;

  /// 图片
  final String pic;

  ///发布时间
  final String publishTime;

  /// 评论内容
  final List<Comment> comments;

  const TalkCardViewModel({
    this.userName,
    this.userImgUrl,
    this.saying,
    this.pic,
    this.publishTime,
    this.comments,
  });
}

class Comment {
  /// 是否发起人
  final bool source;

  /// 评论者
  final String fromUser;

  /// 被评论者
  final String toUser;

  // 评论内容
  final String content;

  const Comment({
    this.source,
    this.fromUser,
    this.toUser,
    this.content,
  });
}

// 用户列表
class UserItemModel {
  final String userImgUrl;
  final String userName;
  final String publishTime;
  final String message;
  UserItemModel({
    this.userName,
    this.userImgUrl,
    this.publishTime,
    this.message,
  });
}

// 知乎热榜
class ZhiHuBillboardModel {
  final String title;
  final String description;
  final String hot;
  final String imgUrl;
  ZhiHuBillboardModel({
    @required this.title,
    @required this.description,
    @required this.hot,
    this.imgUrl,
  });
}
