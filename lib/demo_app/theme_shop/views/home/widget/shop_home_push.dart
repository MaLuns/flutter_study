// 推荐
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_study/demo_app/theme_shop/components/theme_flow.dart';
import 'package:flutter_study/demo_app/theme_shop/mock/mock.dart';
import 'package:flutter_study/demo_app/theme_shop/models/list.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'small_swiper_pagination.dart';

class ShopHomePush extends StatefulWidget {
  @override
  _ShopHomePushState createState() => _ShopHomePushState();
}

class _ShopHomePushState extends State<ShopHomePush> with AutomaticKeepAliveClientMixin {
  bool isLoading = false;
  List<ThemeFlowModel> data = List.from(tuijianFlowModelData);
  List<String> urls = [
    'https://imgpub.chuangkit.com/banner_img_da/320_2?v=1608904322816&x-oss-process=image/format,webp',
    'https://imgpub.chuangkit.com/banner_img_da/321_2?v=1608904322816&x-oss-process=image/format,webp',
    'https://imgpub.chuangkit.com/banner_img_da/315_2?v=1608904322816&x-oss-process=image/format,webp',
  ];
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (!this.isLoading && this.scrollController.position.pixels + 300 >= this.scrollController.position.maxScrollExtent) {
        setState(() {
          this.isLoading = true;
          this.loadMoreData();
        });
      }
    });
  }

  @override
  void dispose() {
    this.scrollController.dispose();
    super.dispose();
  }

  // 模拟数据加载
  Future loadMoreData() {
    return Future.delayed(Duration(seconds: 1), () {
      setState(() {
        this.data.addAll(tuijianFlowModelData.where((element) => !element.isAd));
        this.isLoading = false;
      });
    });
  }

  Widget renderLoadMore() {
    if (this.isLoading) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 3)),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text('努力加载中...', style: TextStyle(fontSize: 15, color: Color(0xFF333333))),
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: Text('上拉加载更多', style: TextStyle(fontSize: 15, color: Color(0xFF333333))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 16),
      controller: scrollController,
      children: [
        AspectRatio(
          aspectRatio: 3 / 1,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(urls[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            itemCount: urls.length,
            scale: 0.8,
            autoplay: true,
            pagination: SwiperPagination(
              margin: EdgeInsets.all(10.0),
              builder: SmallSwiperPagination(),
            ),
            viewportFraction: 1,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          /* height: 100, */
          /*  child: NavGirdView(data: navItemViewModelData), */
          height: 80,
          child: ListView.builder(
            itemCount: navItemViewModelData.length,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var item = navItemViewModelData[index];
              return Container(
                height: 60,
                width: 60,
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 5),
                child: Column(
                  children: <Widget>[
                    Expanded(child: item.icon),
                    Text(
                      item.title,
                      style: TextStyle(fontSize: 13, color: Color(0xFF333333)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.orange[50],
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 12, top: 8, bottom: 8),
          child: Row(
            children: [
              Icon(Icons.notifications, color: Colors.orange[400], size: 16),
              Text(
                ' 积分免费领, 快来看看 >>',
                style: TextStyle(color: Colors.orange[400], fontSize: 12),
              ),
            ],
          ),
        ),
        ImgSliver(),
        Container(
          padding: EdgeInsets.all(16),
          child: ThemeFlow(data: this.data),
        ),
        renderLoadMore(),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

// 分片
class ImgSliver extends StatelessWidget {
  final List<String> str = ['活动', '主题', '字体', '视频铃声', '动态壁纸'];
  final String _url = 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2775951257,2771208657&fm=26&gp=0.jpg';

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 6,
      itemCount: 5,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16),
      physics: NeverScrollableScrollPhysics(), // 禁用滚动
      itemBuilder: (BuildContext context, int index) {
        BorderRadius br;
        Alignment al;
        switch (index) {
          case 0:
            br = BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            );
            al = Alignment(-1, -1);
            break;
          case 1:
            al = Alignment(-.4, -1);
            break;
          case 2:
            br = BorderRadius.only(topRight: Radius.circular(5));
            al = Alignment(.3, -1);
            break;
          case 3:
            al = Alignment(-.29, .3);
            break;
          case 4:
            br = BorderRadius.only(bottomRight: Radius.circular(5));
            al = Alignment(.4, .3);
            break;
        }
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: br,
                image: DecorationImage(
                  image: NetworkImage(_url),
                  fit: BoxFit.none,
                  alignment: al,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                ),
                child: Center(
                  child: Text(
                    str[index],
                    style: TextStyle(
                      color: Colors.white,
                      height: 1,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
      staggeredTileBuilder: (int index) {
        switch (index) {
          case 0:
            return StaggeredTile.count(2, 4);
          case 1:
            return StaggeredTile.count(1, 2);
          case 2:
            return StaggeredTile.count(3, 2);
          default:
            return StaggeredTile.count(2, 2);
        }
      },
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
