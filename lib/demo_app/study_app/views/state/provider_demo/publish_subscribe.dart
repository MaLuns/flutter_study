import 'package:flutter/widgets.dart';

class PublishSubscribe implements Listenable {
  List _list = [];

  // 添加监听
  @override
  void addListener(VoidCallback listener) {
    _list.add(listener);

    print('_list长度:${_list.length}');
  }

  // 移除监听
  @override
  void removeListener(VoidCallback listener) {
    _list.remove(listener);
  }

  // 通知所有监听
  void send() {
    _list.forEach((element) => element());
  }
}
