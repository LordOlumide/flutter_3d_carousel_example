import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example6 extends StatefulWidget {
  const Example6({super.key});

  @override
  State<Example6> createState() => _Example6State();
}

class _Example6State extends State<Example6> {
  double getRandomAngle() {
    final random = math.Random();
    return random.nextDouble() * 2 * math.pi;
  }

  Widget _createWidgets([int count = 20]) {
    if (count == 0) {
      return CarouselWidget3D(
        radius: count * 10,
        childOrientation: OrientedBackingCenter(),
        dragBehaviour: DragBehaviour.none,
        backgroundTapBehavior: BackgroundTapBehavior.none,
        roll: LinearInputFunction(
          gradient: (math.pi / 5) * (count % 2 == 0 ? 1 : -1),
          initialValue: getRandomAngle(),
        ),
        pitch: LinearInputFunction(
          gradient: (math.pi / 5) * (count % 2 == 0 ? 1 : -1),
          initialValue: getRandomAngle(),
        ),
        yaw: LinearInputFunction(
          gradient: (math.pi / 5) * (count % 2 == 0 ? 1 : -1),
          initialValue: getRandomAngle(),
        ),
        backgroundBlur: 0,
        children: List.generate(
          20,
          (index) => CarouselChild(
            child: Container(
              width: count * 3,
              height: count * 3,
              decoration: BoxDecoration(
                color: count % 2 == 0 ? Colors.blue : Colors.yellow,
                shape: BoxShape.rectangle,
                border: Border.all(),
              ),
            ),
          ),
        ),
      );
    }
    return CarouselWidget3D(
      radius: count * 10,
      childOrientation: OrientedBackingCenter(),
      dragBehaviour: DragBehaviour.none,
      backgroundTapBehavior: BackgroundTapBehavior.none,
      roll: LinearInputFunction(
        gradient: (math.pi / 5) * (count % 2 == 0 ? 1 : -1),
        initialValue: getRandomAngle(),
      ),
      pitch: LinearInputFunction(
        gradient: (math.pi / 5) * (count % 2 == 0 ? 1 : -1),
        initialValue: getRandomAngle(),
      ),
      yaw: LinearInputFunction(
        gradient: (math.pi / 5) * (count % 2 == 0 ? 1 : -1),
        initialValue: getRandomAngle(),
      ),
      backgroundBlur: 0,
      children: List.generate(
        20,
        (index) => CarouselChild(
          child: Container(
            width: count * 3,
            height: count * 3,
            decoration: BoxDecoration(
              color: count % 2 == 0 ? Colors.blue : Colors.yellow,
              shape: BoxShape.rectangle,
              border: Border.all(),
            ),
          ),
        ),
      ),
      core: _createWidgets(count - 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: _createWidgets()));
  }
}
