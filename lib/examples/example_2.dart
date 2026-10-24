import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text('Roll', style: TextStyle(fontSize: 25)),
                ),
                Expanded(
                  child: CarouselWidget3D(
                    radius: 70,
                    backgroundBlur: 0,
                    backgroundTapBehavior: BackgroundTapBehavior.none,
                    childTapBehavior: ChildTapBehavior.doNothing,
                    dragBehaviour: DragBehaviour.none,
                    roll: LinearInputFunction(gradient: math.pi / 3),
                    core: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 3),
                      ),
                    ),
                    children: List.generate(colors.length * 3, (index) {
                      return CarouselChild(
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: colors[index % colors.length],
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    }),
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
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text('Pitch', style: TextStyle(fontSize: 25)),
                ),
                Expanded(
                  child: CarouselWidget3D(
                    radius: 70,
                    backgroundBlur: 0,
                    backgroundTapBehavior: BackgroundTapBehavior.none,
                    childTapBehavior: ChildTapBehavior.doNothing,
                    dragBehaviour: DragBehaviour.none,
                    pitch: LinearInputFunction(gradient: math.pi / 3),
                    core: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 3),
                      ),
                    ),
                    children: List.generate(colors.length * 3, (index) {
                      return CarouselChild(
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: colors[index % colors.length],
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    }),
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
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Yaw (with pitch at 45 degrees)',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Expanded(
                  child: CarouselWidget3D(
                    radius: 70,
                    backgroundBlur: 0,
                    backgroundTapBehavior: BackgroundTapBehavior.none,
                    childTapBehavior: ChildTapBehavior.doNothing,
                    dragBehaviour: DragBehaviour.none,
                    pitch: LinearInputFunction(initialValue: math.pi / 4),
                    yaw: LinearInputFunction(gradient: math.pi / 3),
                    core: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 3),
                      ),
                    ),
                    children: List.generate(colors.length * 3, (index) {
                      return CarouselChild(
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: colors[index % colors.length],
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

List<Color> colors = [
  Colors.lightBlue,
  Colors.greenAccent,
  Colors.teal,
  Colors.grey,
  Colors.orangeAccent,
  Colors.purple,
  Colors.red,
  Colors.brown,
  Colors.pink,
];
