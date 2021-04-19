import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SmallSwiperPagination extends SwiperPlugin {
  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    print(config);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(config.itemCount, (index) {
        return Container(
          height: 6,
          width: 6,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: index == config.activeIndex ? Colors.red : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }),
    );
  }
}
