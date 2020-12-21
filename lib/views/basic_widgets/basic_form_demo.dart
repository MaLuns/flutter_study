import 'package:flutter/material.dart';

class BasicFormDemo extends StatefulWidget {
  @override
  _BasicFormDemoState createState() => _BasicFormDemoState();
}

class _BasicFormDemoState extends State<BasicFormDemo> {
  bool _switch = false;
  bool _chechbox = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            labelText: "请输入用户名",
            prefixIcon: Icon(Icons.person),
            // 未获得焦点下划线设为灰色
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            //获得焦点下划线设为蓝色
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "密码",
            hintText: "您的登录密码",
            prefixIcon: Icon(Icons.lock),
          ),
          obscureText: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Switch(
              value: _switch,
              onChanged: (val) {
                setState(() {
                  _switch = val;
                });
              },
            ),
            Text('自动登录'),
            Padding(padding: EdgeInsets.only(right: 30)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Checkbox(
              value: _chechbox,
              onChanged: (val) {
                setState(() {
                  _chechbox = val;
                });
              },
            ),
            Text('自动登录'),
            Padding(padding: EdgeInsets.only(right: 30)),
          ],
        ),
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
          value: .5,
        )
      ],
    );
  }
}
