import 'package:flutter/widgets.dart';
import 'home.dart';
import 'views/animations/animation_demo.dart';
import 'views/basic_widgets/basic_widgets_demo.dart';
import 'views/pointer_event/pointer_event_demo.dart';
import 'views/scroll_widgets/scroll_demo.dart';
import '../theme_shop/index.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => WidgetStudy(),
  'BasicWidgetsDemo': (context) => BasicWidgetsDemo(),
  'ScrollDemo': (context) => ScrollDemo(),
  'PointerEventDemo': (context) => PointerEventDemo(),
  'AnimationDemo': (context) => AnimationDemo(),
  'ThemeShopHome': (context) => ThemeShopHome(),
};
