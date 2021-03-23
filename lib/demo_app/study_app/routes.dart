import 'package:flutter/widgets.dart';
import 'views/animations/animation_demo.dart';
import 'views/basic_widgets/basic_widgets_demo.dart';
import 'views/custom_widget/custom_widget_demo.dart';
import 'views/pointer_event/pointer_event_demo.dart';
import 'views/scroll_widgets/scroll_demo.dart';

Map<String, WidgetBuilder> routes = {
  'BasicWidgetsDemo': (context) => BasicWidgetsDemo(),
  'ScrollDemo': (context) => ScrollDemo(),
  'PointerEventDemo': (context) => PointerEventDemo(),
  'CustomWidgetDemo': (context) => CustomWidgetDemo(),
  'AnimationDemo': (context) => AnimationDemo(),
};
