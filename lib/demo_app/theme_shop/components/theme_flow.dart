import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_study/demo_app/theme_shop/models/list.dart';

// 列表瀑布流
class ThemeFlow extends StatelessWidget {
  final List<ThemeFlowModel> data;
  ThemeFlow({this.data}) : super();

  // tag
  Widget renderTag(txt) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Color.fromRGBO(0, 0, 0, 0.6),
      ),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(color: Colors.white, height: 1, fontSize: 11),
        ),
      ),
    );
  }

  // 渲染列表项
  Widget renderItem(index) {
    ThemeFlowModel item = this.data[index];
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: NetworkImage(item.url),
                fit: BoxFit.fill,
              ),
              border: Border.all(color: Colors.black12, width: 0.2),
            ),
          ),
          Positioned(left: 8, top: 8, child: renderTag(item.typeName)),
          Positioned(left: 8, bottom: 8, child: renderTag(item.tag)),
        ],
      ),
      onTap: () {
        debugPrint(index.toString());
      },
    );
  }

// 渲染广告位
  Widget renderAdItem(index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(
          image: NetworkImage(data[index].url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 6,
      itemCount: this.data.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // 禁用滚动
      itemBuilder: (BuildContext context, int index) {
        if (data[index].isAd) {
          return renderAdItem(index);
        } else {
          return renderItem(index);
        }
      },
      staggeredTileBuilder: (int index) {
        if (data[index].isAd) {
          return StaggeredTile.count(3, 1);
        } else {
          return StaggeredTile.count(3, 5);
        }
      },
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
    );
  }
}
