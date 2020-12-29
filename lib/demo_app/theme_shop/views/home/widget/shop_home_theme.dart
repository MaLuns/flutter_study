import 'package:flutter/material.dart';
import '../../../models/list.dart';
import '../../../mock/mock.dart';
import '../../../components/theme_flow.dart';
import '../../../components/carousel_card.dart';

class ShopHomeTheme extends StatefulWidget {
  @override
  _ShopHomeThemeState createState() => _ShopHomeThemeState();
}

class _ShopHomeThemeState extends State<ShopHomeTheme> {
  List<ThemeFlowModel> data = List.from(themeFlowModelData);
  bool isLoading = false;
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
        this.data.addAll(themeFlowModelData.where((element) => !element.isAd));
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
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 16),
      controller: scrollController,
      children: [
        CarouselCard(
          urls: [
            'https://imgpub.chuangkit.com/designTemplate/2020/12/08/4b51534b-a8d0-4a2b-a0b6-55a36650c7c8_thumb_gif?v=1607409721000&x-oss-process=image/resize,w_600/format,webp',
            'https://imgpub.chuangkit.com/banner_img_da/321_2?v=1608904322816&x-oss-process=image/format,webp',
            'https://imgpub.chuangkit.com/banner_img_da/315_2?v=1608904322816&x-oss-process=image/format,webp',
          ],
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(3, (index) {
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
        TuiJian(),
        Container(
          padding: EdgeInsets.all(16),
          child: ThemeFlow(data: this.data),
        ),
        renderLoadMore(),
      ],
    );
  }
}

class TuiJian extends StatelessWidget {
  final List<TuiJianModel> data = [
    TuiJianModel(
      title: '佳作力荐',
      desc: '精选优质好内容,看看有没有你喜欢的~',
      list: [
        TuiJianItem(
          url: 'https://imgpub.chuangkit.com/designTemplate/2020/12/03/78335d13-9ad8-4e05-aa7d-85ea9775fc1f_thumb?v=1606973880000&x-oss-process=image/resize,w_600/format,webp',
          name: '水青',
          isVipFree: false,
        ),
        TuiJianItem(
          url: 'https://imgpub.chuangkit.com/designTemplate/2020/08/06/b4f3353a-296f-410e-bf0f-06888b66d612_thumb?v=1596708120000&x-oss-process=image/resize,w_600/format,webp',
          name: '星夜 归途',
        ),
        TuiJianItem(
          url: 'https://imgpub.chuangkit.com/designTemplate/2019/12/13/507304559_thumb?v=1587549480000&x-oss-process=image/resize,w_600/format,webp',
          name: '最简约',
        ),
      ],
    ),
    TuiJianModel(
      title: '优选新品',
      list: [
        TuiJianItem(
          url: 'https://imgpub.chuangkit.com/designTemplate/2019/12/13/507304558_thumb?v=1587549600000&x-oss-process=image/resize,w_600/format,webp',
          name: '探索',
        ),
        TuiJianItem(
          url: 'https://imgpub.chuangkit.com/designTemplate/2019/05/06/465557209_thumb?v=1557108240000&x-oss-process=image/resize,w_600/format,webp',
          name: '海天一色',
        ),
        TuiJianItem(
          url: 'https://imgpub.chuangkit.com/designTemplate/2018/07/10/343769750_thumb?v=1589003880000&x-oss-process=image/resize,w_600/format,webp',
          name: 'two',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: this.data.map((item) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item.title,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          item.desc != null
                              ? Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(item.desc, style: TextStyle(color: Colors.black38, fontSize: 10), maxLines: 1, overflow: TextOverflow.ellipsis),
                                )
                              : Text('', style: TextStyle(height: 0))
                        ],
                      ),
                    ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 2,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 32,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(item.list[index].url),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                '试用',
                                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400, height: 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.list[index].name,
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                            ),
                            Padding(padding: EdgeInsets.only(top: 6)),
                            Row(
                              children: [
                                Text('${item.list[index].money} 可币', style: TextStyle(fontSize: 10, height: 1, color: Colors.amber[900])),
                                Padding(padding: EdgeInsets.only(left: 6)),
                                item.list[index].isVipFree
                                    ? Text(
                                        '会员免费',
                                        style: TextStyle(fontSize: 10, height: 1, color: Colors.black54),
                                      )
                                    : Text('', style: TextStyle(height: 0)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
                itemCount: item.list.length,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
