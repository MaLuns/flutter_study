import 'package:flutter/material.dart';
import '../models/list.dart';

class NavGirdView extends StatelessWidget {
  final List<NavItemViewModel> data;
  final int crossAxisCount;
  NavGirdView({@required this.data, this.crossAxisCount = 5}) : super();

  Widget renderItemBuilder(context, index) {
    var item = data[index];
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        children: <Widget>[
          Expanded(child: item.icon),
          Text(
            item.title,
            style: TextStyle(fontSize: 13, color: Color(0xFF333333)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 10,
      ),
      itemCount: data.length,
      itemBuilder: renderItemBuilder,
    );
  }
}
