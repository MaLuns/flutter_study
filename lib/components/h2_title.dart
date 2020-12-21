import 'package:flutter/material.dart';

class H2Title extends StatelessWidget {
  final String title;
  H2Title({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      color: Colors.blue,
      child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}
