import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';
import 'package:flutter_study/demo_app/study_app/components/list_title.dart';
import 'package:flutter_study/demo_app/study_app/models/list_model.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/animated_switcher_demo.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/basic_animations_demo.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/code_animation.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/hero_animation.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/staggered_animation.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/transition_demo.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/waves_animations_demo.dart';

class AnimationDemo extends StatelessWidget {
  final List<ListModel> listModel = [
    ListModel(
      title: '隐式动画',
      subtitle: '在内部实现动画控制,不需要自己声明动画的控制器',
      icon: Icons.scatter_plot_outlined,
      route: TransitionDemo(),
    ),
    ListModel(
      title: 'AnimatedSwitcher',
      subtitle: '通过动画切换组件',
      icon: Icons.scatter_plot_outlined,
      route: AnimatedSwitcherDemo(),
    ),
    ListModel(
      title: '显示动画',
      subtitle: '由自己控制动画状态，而不是让框架管理',
      icon: Icons.scatter_plot_outlined,
      route: BasicAnimationDemo(),
    ),
    ListModel(
      title: '交织动画',
      subtitle: '一组动画或者重叠动画',
      icon: Icons.scatter_plot_outlined,
      route: StaggeredAnimationDemo(),
    ),
    ListModel(
      title: 'Hero动画(主动画)',
      subtitle: '跨页面的动画',
      icon: Icons.scatter_plot_outlined,
      route: HeroAnimation(),
    ),
    ListModel(
      title: '自定义动画',
      subtitle: '结合自定义绘制和动画',
      icon: Icons.scatter_plot_outlined,
      route: WavesAnimations(),
    ),
    ListModel(
      title: '自定义动画二',
      subtitle: '结合自定义绘制和动画',
      icon: Icons.scatter_plot_outlined,
      route: CodeAnimationDemo(),
    ),
  ];

  Widget build(BuildContext context) {
    return BasiceAppLayout(
      title: '动画',
      body: ListTitleComponent(listModel),
      pl: 0,
      pr: 0,
    );
  }
}
