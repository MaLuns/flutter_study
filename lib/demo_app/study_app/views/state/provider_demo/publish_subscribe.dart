class PublishSubscribe {
  List _list = [];

  // 添加监听
  void addListener(void Function() listener) {
    _list.add(listener);
  }

  // 移除监听
  void removeListener(void Function() listener) {
    _list.remove(listener);
  }

  // 通知所有监听
  void send() {
    _list.forEach((element) => element());
  }
}
