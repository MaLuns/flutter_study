import 'package:flutter/material.dart';
import 'package:flutter_study/models/list_model.dart';

// 朋友圈卡片
class TalkCard extends StatelessWidget {
  final TalkCardViewModel data;

  TalkCard({
    Key key,
    this.data,
  }) : super(key: key);

  Widget renderUserSay() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            data.userImgUrl,
            width: 50,
            height: 50,
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 12)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.userName,
                style: TextStyle(
                  fontSize: 20,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF636F80),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  data.saying,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.2,
                    color: Color(0xFF333333),
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              data.pic != null
                  ? Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Image.network(
                        this.data.pic,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  : Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.publishTime,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF999999),
                    ),
                  ),
                  Icon(
                    Icons.comment,
                    size: 16,
                    color: Color(0xFF999999),
                  ),
                ],
              ),
              renderComments(),
            ],
          ),
        ),
      ],
    );
  }

  Widget renderComments() {
    if (data.comments == null || data.comments.length == 0) {
      return Container();
    }

    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      color: Color(0xFFF3F3F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: data.comments.map((comment) {
          return Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF333333),
              ),
              children: [
                TextSpan(
                  text: comment.fromUser,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF636F80),
                  ),
                ),
                TextSpan(text: '：${comment.content}'),
              ]..insertAll(
                  1,
                  comment.source
                      ? [TextSpan()]
                      : [
                          TextSpan(text: ' 回复 '),
                          TextSpan(
                            text: comment.toUser,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF636F80),
                            ),
                          ),
                        ],
                ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              renderUserSay(),
            ],
          ),
        ),
      ],
    );
  }
}
