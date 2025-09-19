import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    double radius = 350;

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: radius,
              height: radius,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: Colors.red),
              ),
            ),
            CarouselWidget3D(
              radius: 200,
              childrenAreAlwaysFacingForward: true,
              thetaShouldRotate: true,
              alphaShouldRotate: true,
              backgroundBlur: 0,
              timeForFullRevolution: 20000,
              tiltController: TiltController(
                initialTiltAngle: 30 * math.pi / 180,
                axisOffset: 30,
                tiltAnimationTime: 20000,
              ),
              clipBehavior: Clip.none,
              children: List.generate(
                10,
                (index) => CarouselChild(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
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
