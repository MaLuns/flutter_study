import 'package:flutter/widgets.dart';

class DataInheritedWidget<T> extends InheritedWidget {
  // 共享的数据
  final T data;

  DataInheritedWidget({@required this.data, Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(DataInheritedWidget<T> oldWidget) {
    return true;
  }
}
