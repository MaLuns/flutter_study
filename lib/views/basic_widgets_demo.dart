import 'package:flutter/material.dart';
import 'package:flutter_study/components/tab_controller.dart';
import 'package:flutter_study/models/tab_model.dart';
import 'package:flutter_study/views/basic_widgets/basic_appbar_demo.dart';
import 'package:flutter_study/views/basic_widgets/basic_button_demo.dart';
import 'package:flutter_study/views/basic_widgets/basic_container_demo.dart';
import 'package:flutter_study/views/basic_widgets/basic_form_demo.dart';
import 'package:flutter_study/views/basic_widgets/basic_image_demo.dart';
import 'package:flutter_study/views/basic_widgets/basic_layout_demo.dart';
import 'basic_widgets/basic_icon_demo.dart';
import 'basic_widgets/basic_text_demo.dart';

class BasicWidgetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabCoontrollerComponent(
      title: '常用基础组件',
      isScrollable: true,
      tabModels: <TabModel>[
        TabModel(tab: Tab(text: 'Text'), page: BasicTextDemo()),
        TabModel(tab: Tab(text: 'Button'), page: BasicButtonDemo()),
        TabModel(tab: Tab(text: 'AppBar'), page: BasicAppBarDemo()),
        TabModel(tab: Tab(text: 'Image'), page: BasicImageDemo()),
        TabModel(tab: Tab(text: 'Icon'), page: BasicIconDemo()),
        TabModel(tab: Tab(text: 'Form'), page: BasicFormDemo()),
        TabModel(tab: Tab(text: 'Layout'), page: BasicLayoutDemo()),
        TabModel(tab: Tab(text: 'Container'), page: BasicContainerDemo()),
        TabModel(tab: Tab(text: 'AspectRatio'), page: BasicIconDemo()),
      ],
    );
  }
}
