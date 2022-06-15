import 'dart:math' as math;

import 'package:flutter/material.dart';

class TrickerWidget extends StatefulWidget {
  const TrickerWidget({Key? key}) : super(key: key);

  @override
  State<TrickerWidget> createState() => _TrickerWidget();
}

class _TrickerWidget extends State<TrickerWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 15),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        child: Image.asset(
          'assets/images/medved.jpg',
          height: 250,
          width: 250,
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        });
  }
}
