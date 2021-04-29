// Hero动画
import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pt: 20,
      body: Container(
        alignment: Alignment.topCenter,
        child: InkWell(
          child: Hero(
            tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
            child: ClipRRect(
              child: Image.asset("asset/images/demo.png", width: 200.0),
            ),
          ),
          onTap: () {
            //打开B路由
            Navigator.push(context, PageRouteBuilder(pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
              return new FadeTransition(
                opacity: animation,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text("原图"),
                  ),
                  body: HeroAnimationRouteB(),
                ),
              );
            }));
          },
        ),
      ),
      title: 'Hero动画',
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
        child: Image.asset("asset/images/demo.png"),
      ),
    );
  }
}
