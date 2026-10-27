import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Horizontal Carousel',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Expanded(
                  child: CarouselWidget3D.horizontal(
                    radius: MediaQuery.sizeOf(context).width / 2,
                    roll: LinearInputFunction(gradient: math.pi / 12),
                    children: List.generate(
                      colors.length,
                      (index) => CarouselChild(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 2,
                          height: MediaQuery.sizeOf(context).height / 4,
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
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Vertical Carousel',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Expanded(
                  child: CarouselWidget3D.vertical(
                    radius: MediaQuery.sizeOf(context).width / 2,
                    roll: LinearInputFunction(gradient: math.pi / 12),
                    children: List.generate(
                      colors.length,
                      (index) => CarouselChild(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 2,
                          height: MediaQuery.sizeOf(context).height / 4,
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
