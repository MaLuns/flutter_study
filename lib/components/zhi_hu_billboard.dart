import 'package:flutter/material.dart';
import 'package:flutter_study/models/list_model.dart';

class ZhiHuBillboard extends StatelessWidget {
  final ZhiHuBillboardModel data;
  final int index;
  ZhiHuBillboard({Key key, this.data, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${index > 9 ? '' : '0'}${index.toString()}',
            style: TextStyle(
              color: index < 4 ? Colors.red : Colors.yellow[800],
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                      Offstage(
                        offstage: data.description == '',
                        child: Text(
                          data.description,
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        '${data.hot}',
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 14,
                          color: Colors.black45,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding:
                        EdgeInsets.only(left: data.imgUrl != null ? 10 : 0)),
                /* Offstage(
                  offstage: false,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      data.imgUrl,
                      height: 70,
                      width: 105,
                      fit: BoxFit.cover,
                    ),
                  ),
                ), */
                data.imgUrl != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          data.imgUrl,
                          height: 70,
                          width: 105,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
