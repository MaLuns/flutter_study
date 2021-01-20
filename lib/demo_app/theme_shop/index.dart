import 'package:flutter/material.dart';
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
    Text('Page2'),
    Text('Page3'),
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
        backgroundColor: Colors.white,
        body: SafeArea(child: _curWidget),
        bottomNavigationBar: BottomNavigationBar(
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
