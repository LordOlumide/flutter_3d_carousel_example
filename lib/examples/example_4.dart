import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

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
              childOrientation: ChildOrientation.facingScreen,
              backgroundTapBehavior: BackgroundTapBehavior.startOrSnapToNearest,
              // roll: ConstantInputFunction(value: 0),
              roll: LinearInputFunction(gradient: math.pi / 10, initialValue: 0),
              pitch: LinearInputFunction(gradient: math.pi / 5, initialValue: 0),
              yaw: LinearInputFunction(gradient: math.pi / 3, initialValue: 0),
              // roll: IntermittentInputFunction(
              //   motionFunction: LinearInputFunction(gradient: math.pi / 3),
              //   movementDuration: const Duration(seconds: 3),
              //   pauseDuration: const Duration(seconds: 9),
              //   timeOffset: const Duration(seconds: 0),
              // ),
              // pitch: IntermittentInputFunction(
              //   motionFunction: LinearInputFunction(gradient: math.pi / 3),
              //   movementDuration: const Duration(seconds: 3),
              //   pauseDuration: const Duration(seconds: 9),
              //   timeOffset: const Duration(seconds: 3),
              // ),
              // yaw: IntermittentInputFunction(
              //   motionFunction: LinearInputFunction(gradient: math.pi / 3),
              //   movementDuration: const Duration(seconds: 3),
              //   pauseDuration: const Duration(seconds: 9),
              //   timeOffset: const Duration(seconds: 6),
              // ),
              backgroundBlur: 0,
              clipBehavior: Clip.none,
              children: List.generate(
                15,
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
