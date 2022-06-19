import 'package:flutter/material.dart';

class DropDouwn extends StatefulWidget {
  const DropDouwn({Key? key}) : super(key: key);

  @override
  State<DropDouwn> createState() => _DropDouwn();
}

class _DropDouwn extends State<DropDouwn> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _controller.forward();

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _animation,
      child: Card(
        color: Color.fromARGB(255, 101, 17, 180),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Text(
                'День защиты детей отмечается ежегодно 1 июня, учреждён в ноябре 1949 года в Париже решением конгресса Международной демократической федерации женщин, впервые отмечался в 1950 году.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
