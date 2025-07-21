import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.blueAccent)),
          Expanded(
            child: CarouselWidget3D(
              radius: MediaQuery.sizeOf(context).width * 0.6,
              onlyRenderForeground: true,
              spinWhileRotating: false,
              shouldRotate: true,
              spinAxis: Axis.vertical,
              timeForFullRevolution: 20000,
              perspectiveStrength: 0.002,
              dragSensitivity: 1.5,
              children: List.generate(colors.length, (index) {
                return CarouselChild(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 3,
                    height: MediaQuery.sizeOf(context).width * 2,
                    decoration: BoxDecoration(
                      color: colors[index],
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                );
              }),
            ),
          ),
          Expanded(child: Container(color: Colors.indigo)),
        ],
      ),
    );
  }
}

List<Color> colors = [
  Colors.lightBlue,
  Colors.greenAccent,
  Colors.teal,
  Colors.orangeAccent,
  Colors.purple,
  Colors.red,
  Colors.brown,
  Colors.pink,
];
