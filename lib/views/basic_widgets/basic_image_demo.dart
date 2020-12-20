import 'package:flutter/material.dart';

class BasicImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(
          image: NetworkImage(
            'https://dev-file.iviewui.com/ttkIjNPlVDuv4lUTvRX8GIlM2QqSe0jg/middle',
          ),
          width: 200,
          height: 200,
        ),
        Image(
          image: AssetImage('asset/images/demo.png'),
        ),
        Image(
          image: AssetImage('asset/images/demo.png'),
          width: 80,
          height: 90,
        )
      ],
    );
  }
}
