import 'package:flutter/material.dart';
import '../../components/basice_app_layout.dart';

class PointerEventDemo extends StatefulWidget {
  @override
  _PointerEventDemoState createState() => _PointerEventDemoState();
}

class _PointerEventDemoState extends State<PointerEventDemo> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return BasiceAppLayout(
      pl: 0,
      pb: 0,
      pr: 0,
      title: '事件',
      body: Listener(
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Text(
            _event?.toString() ?? "",
            style: TextStyle(color: Colors.black),
          ),
        ),
        onPointerDown: (PointerDownEvent event) {
          setState(() => _event = event);
        },
        onPointerMove: (PointerMoveEvent event) {
          setState(() => _event = event);
        },
        onPointerUp: (PointerUpEvent event) {
          setState(() => _event = event);
        },
      ),
    );
  }
}
