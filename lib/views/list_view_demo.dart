import 'package:flutter/material.dart';
import 'package:flutter_study/components/pet_card.dart';
import 'package:flutter_study/components/tab_controller.dart';
import 'package:flutter_study/components/talk_card.dart';
import 'package:flutter_study/components/user_list_item.dart';
import 'package:flutter_study/components/zhi_hu_billboard.dart';
import 'package:flutter_study/mock/mock_data.dart';
import 'package:flutter_study/models/list_model.dart';
import 'package:flutter_study/models/tab_model.dart';
import 'package:toast/toast.dart';

class ListViewDemo extends StatelessWidget {
  Future _onRefresh(context) {
    return Future.delayed(Duration(seconds: 1), () {
      Toast.show("热榜列表已更新", context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TabCoontrollerComponent(
      title: 'ListView 组件',
      isScrollable: true,
      tabModels: <TabModel>[
        TabModel(
          tab: Tab(text: '普通用法'),
          page: ListView(
            physics: BouncingScrollPhysics(),
            children: petCardViewModelData
                .map((PetCardViewModel e) => PetCard(data: e))
                .toList(),
          ),
        ),
        TabModel(
          tab: Tab(text: 'builder用法'),
          page: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: talkCardViewModelData.length,
            itemBuilder: (context, index) =>
                TalkCard(data: talkCardViewModelData[index]),
          ),
        ),
        TabModel(
          tab: Tab(text: 'separated用法'),
          page: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemCount: userItemData.length,
            itemBuilder: (context, index) =>
                UserListItem(data: userItemData[index]),
            separatorBuilder: (context, index) {
              return Divider(
                height: .5,
                thickness: 1,
                color: Color(0xFFeeeeee),
              );
            },
          ),
        ),
        TabModel(
          tab: Tab(text: '下拉刷新'),
          page: RefreshIndicator(
            onRefresh: () => _onRefresh(context),
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemCount: zhiHuBillboardModelData.length,
              itemBuilder: (context, index) => ZhiHuBillboard(
                data: zhiHuBillboardModelData[index],
                index: index + 1,
              ),
              separatorBuilder: (context, index) {
                return Divider(
                  height: .5,
                  thickness: 1,
                  color: Color(0xFFeeeeee),
                );
              },
            ),
          ),
        ),
        TabModel(
          tab: Tab(text: '上拉加载'),
          page: ListViewLoadMore(),
        ),
      ],
    );
  }
}

// 列表加载更多
class ListViewLoadMore extends StatefulWidget {
  @override
  _ListViewLoadMoreState createState() => _ListViewLoadMoreState();
}

class _ListViewLoadMoreState extends State<ListViewLoadMore> {
  bool isLoading = false;
  ScrollController scrollController = ScrollController();

  List _list = List.from(zhiHuBillboardModelData);

  @override
  void initState() {
    super.initState();
    this.scrollController.addListener(() {
      if (!this.isLoading &&
          this.scrollController.position.pixels >=
              this.scrollController.position.maxScrollExtent) {
        setState(() {
          this.isLoading = true;
          this.loadMoreData();
        });
      }
    });
  }

  @override
  void dispose() {
    // 组件销毁时，释放资源（一定不能忘，否则可能会引起内存泄露）
    super.dispose();
    this.scrollController.dispose();
  }

  Future loadMoreData() {
    return Future.delayed(Duration(seconds: 1), () {
      setState(() {
        this.isLoading = false;
        this._list.addAll(zhiHuBillboardModelData);
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
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 3),
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              '努力加载中...',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF333333),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: Text(
          '上拉加载更多',
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF333333),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      controller: this.scrollController,
      itemCount: this._list.length + 1,
      itemBuilder: (context, index) {
        if (index < this._list.length) {
          return ZhiHuBillboard(
            data: this._list[index],
            index: index + 1,
          );
        } else {
          return renderLoadMore();
        }
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: .5,
          thickness: 1,
          color: Color(0xFFeeeeee),
        );
      },
    );
  }
}
