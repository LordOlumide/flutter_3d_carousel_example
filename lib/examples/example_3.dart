import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example3 extends StatefulWidget {
  const Example3({super.key});

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  final List<String> _values = ['Roll', 'Pitch', 'Yaw'];
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _values.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: Colors.red),
              ),
            ),
            CarouselWidget3D(
              radius: 200,
              roll: IntermittentInputFunction(
                motionFunction: LinearInputFunction(
                  gradient: math.pi / 3,
                  initialValue: 0,
                ),
                movementDuration: const Duration(seconds: 2),
                pauseDuration: const Duration(seconds: 4),
                timeOffset: const Duration(seconds: 0),
              ),
              pitch: IntermittentInputFunction(
                motionFunction: LinearInputFunction(
                  gradient: math.pi / 3,
                  initialValue: 0,
                ),
                movementDuration: const Duration(seconds: 2),
                pauseDuration: const Duration(seconds: 4),
                timeOffset: const Duration(seconds: 2),
              ),
              yaw: IntermittentInputFunction(
                motionFunction: LinearInputFunction(
                  gradient: math.pi / 3,
                  initialValue: 0,
                ),
                movementDuration: const Duration(seconds: 2),
                pauseDuration: const Duration(seconds: 4),
                timeOffset: const Duration(seconds: 4),
              ),
              children: List.generate(
                20,
                (index) => CarouselChild(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                      border: Border.all(),
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
