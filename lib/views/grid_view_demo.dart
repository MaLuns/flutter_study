import 'package:flutter/material.dart';
import 'package:flutter_study/components/h2_title.dart';
import 'package:flutter_study/components/tab_controller.dart';
import 'package:flutter_study/mock/mock_data.dart';
import 'package:flutter_study/models/list_model.dart';
import 'package:flutter_study/models/tab_model.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabCoontrollerComponent(
      title: "GridView",
      tabModels: <TabModel>[
        TabModel(tab: Tab(text: '示例一'), page: GridViewDemoOne()),
        TabModel(
          tab: Tab(text: '示例二'),
          page: GridViewDemoTwo(data: hotMovieModelData),
        ),
        TabModel(
            tab: Tab(text: '示例三'),
            page: GirdViewDemoThreex(data: navItemViewModelData)),
      ],
    );
  }
}

// 示例一
class GridViewDemoOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        H2Title(title: 'SliverGridDelegateWithFixedCrossAxisCount'),
        GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 8 / 11,
          ),
          children: [1, 2, 3, 1, 2, 3]
              .map((e) => Container(color: Colors.black12))
              .toList(),
        ),
        H2Title(title: 'SliverGridDelegateWithMaxCrossAxisExtent'),
        GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: [1, 2, 3, 1, 2, 3]
              .map((e) => Container(color: Colors.black12))
              .toList(),
        ),
      ],
    );
  }
}

// 示例二
class GridViewDemoTwo extends StatelessWidget {
  final List<HotMovieModel> data;
  GridViewDemoTwo({this.data}) : super();

  Widget _itemBuilder(context, index) {
    HotMovieModel item = this.data[index];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color.fromARGB(10, 0, 0, 0),
          )
        ],
        color: Colors.white,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          // 海报高度
          AspectRatio(
            aspectRatio: 8 / 11,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(item.url),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(0, 0, 0, 0),
                            Color.fromARGB(155, 0, 0, 0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          item.score > 0 ? item.score.toString() : '',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 选购按钮
          Expanded(
            child: Container(
              width: double.maxFinite,
              color: Color(0xff38acfa),
              child: Center(
                child: Text(
                  '选座购票',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 8 / 13,
      ),
      itemBuilder: _itemBuilder,
      itemCount: this.data.length,
    );
  }
}

// 示例三
class GirdViewDemoThreex extends StatelessWidget {
  final List<NavItemViewModel> data;
  GirdViewDemoThreex({this.data}) : super();

  Widget _getItem(item) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        children: <Widget>[
          Expanded(child: item.icon),
          Text(
            item.title,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      padding: EdgeInsets.symmetric(vertical: 0),
      children: data.map((item) => _getItem(item)).toList(),
    );
  }
}
