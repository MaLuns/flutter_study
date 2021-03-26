import 'package:flutter/material.dart';
import './data_inherited_widget.dart';
import './publish_subscribe.dart';
export './publish_subscribe.dart';

class BasiceData<T> extends StatefulWidget {
  final Widget child;
  final T data;

  BasiceData({
    Key key,
    this.data,
    this.child,
  });

  static T of<T>(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DataInheritedWidget<T>>().data;
  }

  @override
  _BasiceDataState createState() => _BasiceDataState();
}

class _BasiceDataState<T extends PublishSubscribe> extends State<BasiceData> {
  void update() {
    //如果数据发生变化（model类调用了notifyListeners），重新构建InheritedProvider
    setState(() => {});
  }

  @override
  void didUpdateWidget(BasiceData<T> oldWidget) {
    //当Provider更新时，如果新旧数据不"=="，则解绑旧数据监听，同时添加新数据监听
    if (widget.data != oldWidget.data) {
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    // 给model添加监听器
    widget.data.addListener(update);
    super.initState();
  }

  @override
  void dispose() {
    // 移除model的监听器
    widget.data.removeListener(update);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DataInheritedWidget<T>(
      child: widget.child,
      data: widget.data,
    );
  }
}
