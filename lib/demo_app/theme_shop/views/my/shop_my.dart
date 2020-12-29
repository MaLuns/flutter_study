import 'package:flutter/material.dart';

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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(backgroundImage: NetworkImage('https://tse1-mm.cn.bing.net/th/id/OIP.hSoeIT4UrJixFmB6QXxiDwAAAA?w=180&h=180&c=7&o=5&pid=1.7')),
                Padding(padding: EdgeInsets.only(left: 10)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('U68746271'),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Icon(Icons.change_history),
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
                Text('去领取', style: TextStyle(fontSize: 12, color: Colors.amberAccent[700])),
                Icon(Icons.navigate_next, color: Colors.amberAccent[700]),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget renderList() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.white,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.black,
                  size: 22,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 15)),
              Expanded(
                child: Text(
                  'item.title',
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
          IconButton(icon: Icon(Icons.settings_backup_restore, color: Colors.black), onPressed: null),
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
