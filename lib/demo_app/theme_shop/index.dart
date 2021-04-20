import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study/demo_app/theme_shop/views/classify/shop_classify.dart';
import 'package:flutter_study/demo_app/theme_shop/views/selected/shop_select.dart';
import 'views/home/shop_home.dart';
import 'views/my/shop_my.dart';

class ThemeShopHome extends StatefulWidget {
  @override
  _ThemeShopHomeState createState() => _ThemeShopHomeState();
}

class _ThemeShopHomeState extends State<ThemeShopHome> {
  int _currentIndex = 0;
  Widget _curWidget;
  final List<Widget> _list = [
    ShopHome(),
    ShopClassify(),
    ShopSelect(),
    ShopMy(),
  ];

  _ThemeShopHomeState() {
    _curWidget = _list[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Study',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red[400],
        highlightColor: Color.fromRGBO(0, 0, 0, 0),
        splashColor: Color.fromRGBO(0, 0, 0, 0),
      ),
      home: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(child: _curWidget),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _curWidget = _list[index];
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(icon: Icon(Icons.widgets), label: '分类'),
            BottomNavigationBarItem(icon: Icon(Icons.whatshot), label: '精选'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
          ],
        ),
      ),
    );
  }
}
