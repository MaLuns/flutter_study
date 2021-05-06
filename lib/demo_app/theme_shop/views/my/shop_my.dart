import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/models/list_model.dart';
import 'widget/discounts_page.dart';

final List<ListModel> listModel = [
  ListModel(
    title: '优惠券',
    icon: Icons.thumb_up,
    route: DiscountsPage(),
  ),
  ListModel(
    title: '会玩人类中心',
    icon: Icons.thumb_up,
    route: 'BasicWidgetsDemo',
  ),
  ListModel(
    title: '会员精选',
    icon: Icons.thumb_up,
    route: 'BasicWidgetsDemo',
  ),
  ListModel(
    title: '会员精选',
    icon: Icons.thumb_up,
    route: 'BasicWidgetsDemo',
  ),
  ListModel(
    title: '积分商城',
    icon: Icons.thumb_up,
    route: 'BasicWidgetsDemo',
  ),
];

class ShopMy extends StatelessWidget {
  //
  Widget renderUserCard() {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.05),
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(backgroundImage: NetworkImage('https://tse1-mm.cn.bing.net/th/id/OIP.hSoeIT4UrJixFmB6QXxiDwAAAA?w=180&h=180&c=7&o=5&pid=1.7')),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('U68746271', style: TextStyle(fontSize: 20)),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Icon(Icons.contacts, size: 16),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      '签到',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black26, width: 0.1),
              ),
            ),
            padding: EdgeInsets.only(top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('欢太会员', style: TextStyle(fontSize: 12, color: Colors.amberAccent[700])),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5), child: Text('|', style: TextStyle(fontSize: 12, color: Colors.amber[900]))),
                Expanded(
                  child: Text('会员专享权益', style: TextStyle(fontSize: 12, color: Colors.amber[900])),
                ),
                Text('去领取', style: TextStyle(fontSize: 12, color: Colors.black)),
                Icon(Icons.navigate_next, color: Colors.black),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget renderList() {
    return ListView.builder(
      itemCount: listModel.length,
      itemBuilder: (BuildContext context, int index) {
        ListModel item = listModel[index];

        return GestureDetector(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Icon(
                    item.icon,
                    color: Colors.black,
                    size: 22,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 15)),
                Expanded(
                  child: Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF333333),
                    ),
                  ),
                ),
                Icon(Icons.navigate_next),
              ],
            ),
          ),
          onTap: () {
            /*   if (item.route.runtimeType == String) {
              Navigator.pushNamed(context, item.route);
            } else { */
            Navigator.push(context, MaterialPageRoute(builder: (context) => item.route));
            /*  } */
          },
        );
      },
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.settings, color: Colors.black), onPressed: null),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          renderUserCard(),
          renderList(),
        ],
      ),
    );
  }
}
