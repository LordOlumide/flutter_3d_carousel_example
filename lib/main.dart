import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel_example/example_1/example_1.dart';
import 'package:flutter_3d_carousel_example/example_2/example_2.dart';
import 'package:flutter_3d_carousel_example/example_3/example_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Example1()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              child: Text('Example 1', style: TextStyle(fontSize: 22)),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Example2()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              child: Text('Example 2', style: TextStyle(fontSize: 22)),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Example3()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              child: Text('Example 3', style: TextStyle(fontSize: 22)),
            ),
          ],
        ),
      ),
    );
  }
}
