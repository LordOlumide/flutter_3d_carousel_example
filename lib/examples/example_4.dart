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
              childrenAreAlwaysFacingForward: false,
              thetaShouldRotate: true,
              alphaShouldRotate: true,
              backgroundBlur: 0,
              timeForFullRevolution: 20000,
              initialTheta: 0 * math.pi / 180,
              tiltController: TiltController(
                initialTiltAngle: 90 * math.pi / 180,
                axisOffset: 0,
                tiltAnimationTime: 10000,
              ),
              clipBehavior: Clip.none,
              children: List.generate(
                20,
                (index) => CarouselChild(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(
                      child: Text('F', style: TextStyle(fontSize: 50)),
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
