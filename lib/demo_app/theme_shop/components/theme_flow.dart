import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/list.dart';
import '../views/detail/theme_detail.dart';

// 列表瀑布流
class ThemeFlow extends StatelessWidget {
  final List<ThemeFlowModel> data;
  ThemeFlow({this.data}) : super();

  // tag
  Widget renderTag(txt) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Color.fromRGBO(0, 0, 0, 0.6),
      ),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
    );
  }

  // 渲染列表项
  Widget renderItem(context, index) {
    ThemeFlowModel item = this.data[index];
    return RenderThemeFlowItem(data: item);
    /* return GestureDetector(
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
          Positioned(left: 5, top: 5, child: renderTag(item.typeName)),
          Positioned(left: 5, bottom: 5, child: renderTag(item.tag)),
        ],
      ),
      onTap: () {
        debugPrint(index.toString());
        Navigator.push(context, MaterialPageRoute(builder: (context) => ThemeDetailPage()));
      },
    ); */
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
        return data[index].isAd ? renderAdItem(index) : renderItem(context, index);
      },
      staggeredTileBuilder: (int index) {
        return data[index].isAd ? StaggeredTile.count(3, 1) : StaggeredTile.count(3, 5);
      },
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
    );
  }
}

// 渲染item
class RenderThemeFlowItem extends StatefulWidget {
  final ThemeFlowModel data;
  RenderThemeFlowItem({Key key, @required this.data}) : super(key: key);

  @override
  _RenderThemeFlowItemState createState() => _RenderThemeFlowItemState();
}

class _RenderThemeFlowItemState extends State<RenderThemeFlowItem> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(milliseconds: 100), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.ease);
    animation = Tween<double>(begin: 1.0, end: 0.9).animate(animation)..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // tag
  Widget renderTag(txt) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Color.fromRGBO(0, 0, 0, 0.6),
      ),
      child: Center(
        child: Text(txt, style: TextStyle(color: Colors.white, fontSize: 10)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Transform.scale(
        scale: animation.value,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.black12, width: 0.2),
                image: DecorationImage(
                  image: NetworkImage(widget.data.url),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(left: 5, top: 5, child: renderTag(widget.data.typeName)),
            Positioned(left: 5, bottom: 5, child: renderTag(widget.data.tag)),
          ],
        ),
      ),
      onTap: () {
        controller.reverse();
        Navigator.push(context, MaterialPageRoute(builder: (context) => ThemeDetailPage()));
      },
      /* onLongPress: () => controller.forward(), */
      /* onTapCancel: () => controller.reverse(), */
      onLongPressEnd: (e) => controller.reverse(),
      onTapUp: (e) => controller.reverse(),
      onTapDown: (e) => controller.forward(),
    );
  }
}
