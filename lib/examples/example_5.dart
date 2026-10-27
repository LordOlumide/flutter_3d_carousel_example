import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example5 extends StatefulWidget {
  const Example5({super.key});

  @override
  State<Example5> createState() => _Example5State();
}

class _Example5State extends State<Example5> {
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
              childOrientation: OrientedBackingCenter(),
              dragEndBehavior: DragEndBehavior.continueSpinning,
              backgroundTapBehavior: BackgroundTapBehavior.startOrSnapToNearest,
              roll: LinearInputFunction(
                gradient: math.pi / 10,
                initialValue: 0,
              ),
              pitch: LinearInputFunction(
                gradient: math.pi / 5,
                initialValue: 0,
              ),
              yaw: LinearInputFunction(gradient: math.pi / 3, initialValue: 0),
              backgroundBlur: 0,
              clipBehavior: Clip.none,
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
