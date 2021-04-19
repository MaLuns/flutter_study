import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ShopSelect extends StatefulWidget {
  @override
  _ShopSelectState createState() => _ShopSelectState();
}

class _ShopSelectState extends State<ShopSelect> {
  @override
  Widget build(BuildContext context) {
    String jsonStr = '[{"name":"Jack"},{"name":"Rose"}]';
    // List jsons = ;
    List<User> users = (json.decode(jsonStr) as List).map((e) => User.fromJson(e)).toList();

    print(users);

    return Container(
      height: 300,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://via.placeholder.com/350x150",
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}

class User {
  final String name;
  final String email;

  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'email': email,
      };
}

class Users {
  List<User> user;

  Users({this.user});

  factory Users.fromJson(List<dynamic> json) {
    List<User> stus = new List<User>();
    stus = json.map((e) => User.fromJson(e)).toList();

    return Users(user: stus);
  }
}
