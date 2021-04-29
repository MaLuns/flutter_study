import 'package:flutter/material.dart';
import 'package:flutter_study/demo_app/study_app/components/basice_app_layout.dart';
import 'package:flutter_study/demo_app/study_app/components/list_title.dart';
import 'package:flutter_study/demo_app/study_app/models/list_model.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/animated_switcher_demo.dart';
import 'package:flutter_study/demo_app/study_app/views/animations/basic_animations_demo.dart';
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
      title: '动画基础',
      subtitle: '动画基础和动画组件使用',
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
      title: '自定义动画',
      subtitle: '结合自定义绘制和动画',
      icon: Icons.scatter_plot_outlined,
      route: WavesAnimations(),
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
