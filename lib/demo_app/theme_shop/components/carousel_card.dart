import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final List<String> urls;
  CarouselCard({@required this.urls}) : super();

  Widget renderItemBuilder(context, index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage(urls[index]),
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: urls.length,
        itemBuilder: renderItemBuilder,
      ),
    );
  }
}
