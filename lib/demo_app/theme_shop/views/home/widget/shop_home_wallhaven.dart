import 'package:flutter/material.dart';
import 'small_swiper_pagination.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../../models/list.dart';
import '../../../mock/mock.dart';
import '../../../components/theme_flow.dart';

class ShopHomeWallhaven extends StatefulWidget {
  @override
  _ShopHomeWallhavenState createState() => _ShopHomeWallhavenState();
}

class _ShopHomeWallhavenState extends State<ShopHomeWallhaven> with AutomaticKeepAliveClientMixin {
  List<ThemeFlowModel> data = List.from(wallhavenFlowModelData);
  bool isLoading = false;
  ScrollController scrollController = ScrollController();
  final List urls = [
    'https://imgpub.chuangkit.com/designTemplate/2020/12/27/cf36e968-1d8f-484c-b353-407c8a8f336e_thumb?v=1609071600000&x-oss-process=image/resize,w_600/format,webp',
    'https://imgpub.chuangkit.com/designTemplate/2020/12/10/a87cd366-1db7-4825-8583-9bd51ae2acfa_thumb?v=1607592240000&x-oss-process=image/resize,w_600/format,webp',
    'https://imgpub.chuangkit.com/designTemplate/2020/11/26/27ab77d8-a202-4cde-bc27-2577a1d3bc29_thumb?v=1606375440000&x-oss-process=image/resize,w_600/format,webp',
  ];

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
        this.data.addAll(wallhavenFlowModelData.where((element) => !element.isAd));
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
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(4, (index) {
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
            }).toList(),
          ),
        ),
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
