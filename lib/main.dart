import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel_example/examples/example_1.dart';
import 'package:flutter_3d_carousel_example/examples/example_2.dart';
import 'package:flutter_3d_carousel_example/examples/example_3.dart';
import 'package:flutter_3d_carousel_example/examples/example_5.dart';
import 'package:flutter_3d_carousel_example/examples/example_6.dart';

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
            NavButton(title: 'Example 1', screenToPushTo: Example1()),
            const SizedBox(height: 40),
            NavButton(title: 'Example 2', screenToPushTo: Example2()),
            const SizedBox(height: 40),
            NavButton(title: 'Example 3', screenToPushTo: Example3()),
            const SizedBox(height: 40),
            NavButton(title: 'Example 4', screenToPushTo: Example5()),
            const SizedBox(height: 40),
            NavButton(title: 'Example 5', screenToPushTo: Example6()),
          ],
        ),
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final String title;
  final Widget screenToPushTo;

  const NavButton({
    super.key,
    required this.title,
    required this.screenToPushTo,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
