import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';
import 'basice_data.dart';

class ProviderRunDemo extends StatefulWidget {
  @override
  _ProviderRunDemo createState() => _ProviderRunDemo();
}

class _ProviderRunDemo extends State<ProviderRunDemo> {
  double count = 0;
  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pt: 20,
      title: 'ProviderRunDemo',
      body: ListView(
        children: [
          Container(
            child: BasiceData<CartModel>(
              data: CartModel(),
              child: Builder(
                builder: (context) {
                  debugPrint('0000');
                  print(context);
                  return Column(
                    children: [
                      Builder(
                        builder: (context) {
                          debugPrint('1111');
                          print(context);
                          return Container(
                            child: Text(BasiceData.of<CartModel>(context).count.toString()),
                          );
                        },
                      ),
                      Builder(
                        builder: (context) {
                          debugPrint('2222');
                          print(context);
                          return RaisedButton(
                            child: Text("Conunt +1"),
                            onPressed: () {
                              BasiceData.of<CartModel>(context, listenable: false).add(1);
                            },
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartModel extends PublishSubscribe {
  double count = 0;
  void add(double item) {
    count += item;
    send();
  }
}
