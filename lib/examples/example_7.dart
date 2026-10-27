import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example7 extends StatelessWidget {
  const Example7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'With pitch = 90 degrees',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Oriented Facing Screen',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: CarouselWidget3D(
                    radius: 100,
                    childOrientation: OrientedFacingScreen(),
                    roll: LinearInputFunction(gradient: math.pi / 6),
                    pitch: ConstantInputFunction(value: math.pi / 2),
                    childTapBehavior: ChildTapBehavior.doNothing,
                    backgroundTapBehavior: BackgroundTapBehavior.none,
                    dragEndBehavior: DragEndBehavior.continueSpinning,
                    backgroundBlur: 0,
                    children: List.generate(
                      colors.length,
                      (index) => CarouselChild(
                        child: Container(
                          width: 70,
                          height: 70,
                          color: colors[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Oriented Backing Center',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: CarouselWidget3D(
                    radius: 100,
                    childOrientation: OrientedBackingCenter(),
                    roll: LinearInputFunction(gradient: math.pi / 6),
                    pitch: ConstantInputFunction(value: math.pi / 2),
                    childTapBehavior: ChildTapBehavior.doNothing,
                    backgroundTapBehavior: BackgroundTapBehavior.none,
                    dragEndBehavior: DragEndBehavior.continueSpinning,
                    backgroundBlur: 0,
                    children: List.generate(
                      colors.length,
                          (index) => CarouselChild(
                        child: Container(
                          width: 70,
                          height: 70,
                          color: colors[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Oriented With X Tilt',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: CarouselWidget3D(
                    radius: 100,
                    childOrientation: OrientedWithXTilt(math.pi / 2),
                    roll: LinearInputFunction(gradient: math.pi / 6),
                    pitch: ConstantInputFunction(value: math.pi / 2),
                    childTapBehavior: ChildTapBehavior.doNothing,
                    backgroundTapBehavior: BackgroundTapBehavior.none,
                    dragEndBehavior: DragEndBehavior.continueSpinning,
                    backgroundBlur: 0,
                    children: List.generate(
                      colors.length,
                          (index) => CarouselChild(
                        child: Container(
                          width: 70,
                          height: 70,
                          color: colors[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Color> colors = [
  Colors.lightBlue,
  Colors.greenAccent,
  Colors.indigo,
  Colors.grey,
  Colors.yellow,
  Colors.purple,
];
