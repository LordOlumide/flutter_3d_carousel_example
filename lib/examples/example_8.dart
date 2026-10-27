import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example8 extends StatefulWidget {
  const Example8({super.key});

  @override
  State<Example8> createState() => _Example8State();
}

class _Example8State extends State<Example8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselWidget3D(
          radius: 500,
          childOrientation: OrientedWithYTilt(math.pi),
          dragEndBehavior: DragEndBehavior.continueSpinning,
          backgroundTapBehavior: BackgroundTapBehavior.startOrSnapToNearest,
          hideForeground: true,
          roll: LinearInputFunction(gradient: -math.pi / 5, initialValue: 0),
          backgroundBlur: 0,
          children: List.generate(
            8,
            (index) => CarouselChild(
              child: Container(
                width: 300,
                height: 800,
                decoration: BoxDecoration(
                  color: colors[index % 6],
                  shape: BoxShape.rectangle,
                  border: Border.all(),
                ),
                child: Center(
                  child: Text('${index + 1}', style: TextStyle(fontSize: 50)),
                ),
              ),
            ),
          ),
        ),
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
