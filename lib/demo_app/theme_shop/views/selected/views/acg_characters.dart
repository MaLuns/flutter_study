import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AcgCharacters extends StatefulWidget {
  final data;
  AcgCharacters({this.data}) : super();

  @override
  _AcgCharactersState createState() => _AcgCharactersState();
}

class _AcgCharactersState extends State<AcgCharacters> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    this.tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            brightness: Brightness.dark,
            /* floating: true, */
            pinned: true,
            expandedHeight: 500.0,
            elevation: 0,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.data['title']),
              centerTitle: true,
              background: Container(
                padding: EdgeInsets.only(top: 80, bottom: 60),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff555555),
                      Color(0xff000000),
                    ],
                  ),
                ),
                child: Image.network(widget.data['url'], fit: BoxFit.fitHeight),
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                controller: this.tabController,
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.white,
                labelColor: Colors.white,
                tabs: <Widget>[
                  Tab(text: '主题'),
                  Tab(text: '字体'),
                  Tab(text: '壁纸'),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: this.tabController,
              children: <Widget>[
                Center(child: Text('Content of Home')),
                Center(child: Text('Content of Home')),
                Center(child: Text('Content of Profile')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double collapsedHeight;
  final double expandedHeight;
  final double paddingTop;
  final String coverImgUrl;
  final String title;
  String statusBarMode = 'dark';

  SliverCustomHeaderDelegate({
    this.collapsedHeight,
    this.expandedHeight,
    this.paddingTop,
    this.coverImgUrl,
    this.title,
  });

  @override
  double get minExtent => this.collapsedHeight + this.paddingTop;

  @override
  double get maxExtent => this.expandedHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: this.maxExtent,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(child: Image.network(this.coverImgUrl, fit: BoxFit.cover)),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              child: SafeArea(
                bottom: false,
                child: Container(
                  height: this.collapsedHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Text(
                        this.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FilmContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(16), child: Container());
  }
}
