import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:week17animation/secondpage.dart';

class Earth extends StatefulWidget {
  const Earth({Key? key}) : super(key: key);

  @override
  State<Earth> createState() => _Earth();
}

class _Earth extends State<Earth> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
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
        child: Hero(
          tag: 'Planet',
          child: AnimatedContainer(
            height: 350,
            width: 350,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            child: IconButton(
              icon: Image.asset(
                'assets/icons/earth.png',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
            ),
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        });
  }
}
