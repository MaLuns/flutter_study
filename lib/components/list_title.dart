import 'package:flutter/material.dart';
import 'package:flutter_study/models/list_model.dart';

// 菜单列表
class ListTitleComponent extends StatelessWidget {
  final List<ListModel> listModel;
  ListTitleComponent(this.listModel);

  Widget _itemBuilderItem(BuildContext context, int index) {
    var item = listModel[index];
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF333333),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 2)),
                        Text(
                          item.subtitle,
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF999999),
                          ),
                        )
                      ],
                    ),
                  ),
                  item.route != null ? Icon(Icons.navigate_next) : Text(''),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        if (item.route != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => item.route));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: listModel.length,
        itemBuilder: _itemBuilderItem,
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return Divider(
            height: .5,
            thickness: 1,
            color: Color(0xFFeeeeee),
          );
        },
      ),
    );
  }
}
