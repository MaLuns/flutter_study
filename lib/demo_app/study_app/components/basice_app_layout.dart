import 'package:flutter/material.dart';

class BasiceAppLayout extends StatelessWidget {
  final Widget body;
  final String title;
  final double pt;
  final double pl;
  final double pr;
  final double pb;

  BasiceAppLayout({
    @required this.body,
    @required this.title,
    this.pt = 0.0,
    this.pl = 16.0,
    this.pr = 16.0,
    this.pb = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(pl, pt, pr, pb),
        child: body,
      ),
    );
  }
}
