import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/theme_shop/models/list.dart';

class ShopClassifyMenu extends StatefulWidget {
  final List<ShopClassifyModel> data;
  ShopClassifyMenu(this.data) : super();
  @override
  _ShopClassifyMenuState createState() => _ShopClassifyMenuState();
}

class _ShopClassifyMenuState extends State<ShopClassifyMenu> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          child: ListView.builder(
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Container(
                  child: Text('${widget.data[index].title}'),
                  alignment: Alignment.center,
                  height: 50,
                  width: 120,
                  padding: EdgeInsets.only(right: 2),
                  decoration: BoxDecoration(
                    color: _index == index ? Colors.white : Colors.transparent,
                    border: Border(
                      left: BorderSide(color: _index == index ? Colors.red : Colors.transparent, width: 2),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _index = index;
                  });
                },
              );
            },
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: widget.data.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.data[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 6 / 5,
                      ),
                      children: widget.data[index].children
                          .map((e) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(e.url),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(e.title),
                                    height: 30,
                                    alignment: Alignment.centerLeft,
                                  ),
                                ],
                              ))
                          .toList(),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
