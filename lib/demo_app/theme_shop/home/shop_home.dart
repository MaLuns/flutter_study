import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/list.dart';
import '../components/carousel_card.dart';
import '../components/nav_gird_view.dart';
import '../components/theme_flow.dart';
import '../mock/mock.dart';

class ShopHome extends StatelessWidget {
  final List<Widget> tabList = [
    Tab(text: '推荐'),
    Tab(text: '主题'),
    Tab(text: '字体'),
    Tab(text: '壁纸'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Material(
            color: Colors.white,
            child: TabBar(
              labelColor: Colors.red[600],
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.red[600],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2.0,
              tabs: tabList,
            ),
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            ShopHomePush(),
            Center(child: Text('tab2')),
            Center(child: Text('tab3')),
            Center(child: Text('tab4')),
          ],
        ),
      ),
    );
  }
}

// 推荐
class ShopHomePush extends StatefulWidget {
  @override
  _ShopHomePushState createState() => _ShopHomePushState();
}

class _ShopHomePushState extends State<ShopHomePush> {
  bool isLoading = false;
  List<ThemeFlowModel> data = List.from(themeFlowModelData);
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (!this.isLoading &&
          this.scrollController.position.pixels + 300 >=
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
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 16),
      controller: scrollController,
      children: [
        CarouselCard(
          urls: [
            'https://tse4-mm.cn.bing.net/th/id/OIP.1z0DzvSgJNvYkzcMEiHsNQHaDq?w=336&h=173&c=7&o=5&dpr=1.25&pid=1.7',
            'https://tse1-mm.cn.bing.net/th/id/OIP.cyIlooh-0J9sN9pR4MlpDwHaEK?w=321&h=180&c=7&o=5&dpr=1.25&pid=1.7',
            'https://tse1-mm.cn.bing.net/th/id/OIP.bpu_1QaLR0uJRzURgDPGyQHaEo?w=285&h=180&c=7&o=5&dpr=1.25&pid=1.7',
            'https://tse1-mm.cn.bing.net/th/id/OIP.65rbFblJrLbjEHMUzOp4uAHaES?w=307&h=180&c=7&o=5&dpr=1.25&pid=1.7',
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: NavGirdView(data: navItemViewModelData),
        ),
        Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.orange[50],
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 12, top: 8, bottom: 8),
          child: Row(
            children: [
              Icon(Icons.notifications, color: Colors.orange[800], size: 20),
              Text(
                ' 积分免费领, 快来看看 >>',
                style: TextStyle(color: Colors.orange[800], fontSize: 14),
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
}

// 分片
class ImgSliver extends StatelessWidget {
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
        switch (index) {
          case 0:
            br = BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            );
            break;
          case 2:
            br = BorderRadius.only(topRight: Radius.circular(5));
            break;
          case 4:
            br = BorderRadius.only(bottomRight: Radius.circular(5));
            break;
          default:
            break;
        }
        return Container(
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: br,
            image: DecorationImage(
              image: NetworkImage(
                  'https://tse3-mm.cn.bing.net/th/id/OIP.H3sZxL6gbG19WwnLKqXpwgHaEL?w=308&h=180&c=7&o=5&pid=1.7'),
              fit: BoxFit.cover,
            ),
          ),
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
