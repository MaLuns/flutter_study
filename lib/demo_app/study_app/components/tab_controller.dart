import 'package:flutter/material.dart';
import '../models/tab_model.dart';

// tabs
class TabCoontrollerComponent extends StatefulWidget {
  final List<TabModel> tabModels;
  final String title;
  final bool isScrollable;
  const TabCoontrollerComponent({Key key, @required this.tabModels, @required this.title, this.isScrollable = false}) : super(key: key);

  @override
  _TabCoontrollerComponent createState() => _TabCoontrollerComponent();
}

class _TabCoontrollerComponent extends State<TabCoontrollerComponent> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: widget.tabModels.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0,
        bottom: TabBar(
          unselectedLabelColor: Colors.white54,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 2.0,
          controller: _tabController,
          isScrollable: widget.isScrollable,
          tabs: widget.tabModels.map((TabModel e) => e.tab).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: widget.tabModels.map((TabModel e) => e.page).toList(),
      ),
    );
  }
}
