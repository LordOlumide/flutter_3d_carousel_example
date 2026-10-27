import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel_example/examples/example_1.dart';
import 'package:flutter_3d_carousel_example/examples/example_2.dart';
import 'package:flutter_3d_carousel_example/examples/example_3.dart';
import 'package:flutter_3d_carousel_example/examples/example_4.dart';
import 'package:flutter_3d_carousel_example/examples/example_5.dart';
import 'package:flutter_3d_carousel_example/examples/example_6.dart';
import 'package:flutter_3d_carousel_example/examples/example_7.dart';
import 'package:flutter_3d_carousel_example/examples/example_8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      // home: Example4(),
    );
    // return MaterialApp(home: Example4());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavButton(
              title: 'Example 1',
              description: 'Default Horizontal and Vertical carousels',
              screenToPushTo: Example1(),
            ),
            const SizedBox(height: 10),
            NavButton(
              title: 'Example 2',
              description: 'Roll, pitch, and yaw demos',
              screenToPushTo: Example2(),
            ),
            const SizedBox(height: 10),
            NavButton(
              title: 'Example 3',
              description: 'Intermittent motion example',
              screenToPushTo: Example3(),
            ),
            const SizedBox(height: 10),
            NavButton(
              title: 'Example 4',
              description: 'Demo with core widget and onChildTapped function',
              screenToPushTo: Example4(),
            ),
            const SizedBox(height: 10),
            NavButton(
              title: 'Example 5',
              description: 'Free spinning wheel',
              screenToPushTo: Example5(),
            ),
            const SizedBox(height: 10),
            NavButton(
              title: 'Example 6',
              description: 'Biblically accurate spinning wheel',
              screenToPushTo: Example6(),
            ),
            const SizedBox(height: 10),
            NavButton(
              title: 'Example 7',
              description: 'Comparing different child orientations',
              screenToPushTo: Example7(),
            ),
            const SizedBox(height: 10),
            NavButton(
              title: 'Example 8',
              description: 'Reverse Slideshow',
              screenToPushTo: Example8(),
            ),
          ],
        ),
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final String title;
  final String description;
  final Widget screenToPushTo;

  const NavButton({
    super.key,
    required this.title,
    required this.description,
    required this.screenToPushTo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screenToPushTo),
            );
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          child: Text(title, style: TextStyle(fontSize: 22)),
        ),
        Text(description, style: TextStyle(fontSize: 17)),
      ],
    );
  }
}
