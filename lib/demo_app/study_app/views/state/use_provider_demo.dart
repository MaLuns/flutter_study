import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';
import 'package:provider/provider.dart';

class MyModel with ChangeNotifier {
  int counter = 0;

  MyModel({this.counter = 0});

  Future<void> incrementCounter() async {
    counter++;
    print(counter);
    notifyListeners();
  }
}

class MyModel2 with ChangeNotifier {
  int counter = 0;

  MyModel2({this.counter = 0});

  Future<void> incrementCounter() async {
    counter++;
    print(counter);
    notifyListeners();
  }
}

class UseProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      title: '使用Provider',
      body: Center(
        child: ListView(
          children: [
            DemoOne(),
            DemoTwo(),
            DemoThree(),
          ],
        ),
      ),
    );
  }
}

// Provider 不会更新UI,只共享数据
class DemoOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => MyModel(),
      child: Column(
        children: [
          Consumer<MyModel>(
            // 获取到provider提供出来的值
            builder: (context, model, child) {
              return Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                color: Colors.yellow[600],
                child: Text(
                  '${model.counter}',
                ),
              );
            },
          ),
          Consumer<MyModel>(
            // 获取到provider提供出来的值
            builder: (context, model, child) {
              return FlatButton(
                color: Colors.yellow[600],
                onPressed: model.incrementCounter,
                child: Icon(Icons.add),
              );
            },
          ),
        ],
      ),
    );
  }
}

// ChangeNotifierProvider 会调用notifyListeners更新Ui
// ListenableProvider 和  ChangeNotifierProvider类似,但是 ChangeNotifierProvider 会在需要时候调用 ChangeNotifier.dispose
class DemoTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyModel(),
      child: Column(
        children: [
          Builder(
            builder: (context) {
              // 获取到provider提供出来的值
              MyModel _model = Provider.of<MyModel>(context, listen: false);
              return Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                color: Colors.black12,
                child: Text('当前是：${_model.counter}, 不使用更新'),
              );
            },
          ),
          Consumer<MyModel>(
            // 获取到provider提供出来的值
            builder: (context, model, child) {
              return Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                color: Colors.black12,
                child: Text(
                  '${model.counter}',
                ),
              );
            },
          ),
          Consumer<MyModel>(
            // 获取到provider提供出来的值
            builder: (context, model, child) {
              return FlatButton(
                color: Colors.black12,
                onPressed: model.incrementCounter,
                child: Icon(Icons.add),
              );
            },
          ),
        ],
      ),
    );
  }
}

//MultiProvider 提供多个数据类型
class DemoThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyModel>(create: (_) => MyModel()),
        ChangeNotifierProvider<MyModel2>(create: (_) => MyModel2()),
      ],
      child: Column(
        children: [
          Consumer<MyModel>(
            // 获取到provider提供出来的值
            builder: (context, model, child) {
              return Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                color: Colors.red[300],
                child: Text(
                  '${model.counter}',
                ),
              );
            },
          ),
          Consumer<MyModel2>(
            // 获取到provider提供出来的值
            builder: (context, model, child) {
              return Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                color: Colors.red,
                child: Text(
                  '${model.counter}',
                ),
              );
            },
          ),
          Consumer<MyModel>(
            // 获取到provider提供出来的值
            builder: (context, model, child) {
              return FlatButton(
                color: Colors.red[300],
                onPressed: model.incrementCounter,
                child: Icon(Icons.add),
              );
            },
          ),
          Consumer<MyModel2>(
            // 获取到provider提供出来的值
            builder: (context, model, child) {
              return FlatButton(
                color: Colors.red,
                onPressed: model.incrementCounter,
                child: Icon(Icons.add),
              );
            },
          ),
        ],
      ),
    );
  }
}
