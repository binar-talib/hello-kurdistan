import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double containerWidth = 200;
  double containerHeight = 100;
  double fontSize = 14;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                containerHeight = random.nextDouble() * (200.0 - 100.0) + 100.0;
                containerWidth = random.nextDouble() * (300.0 - 200.0) + 200.0;
                fontSize = random.nextDouble() * (20.0 - 14.0) + 14.0;
              });
            },
            child: AnimatedContainer(
              width: containerWidth,
              height: containerHeight,
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: const Color(0xFF7090B0).withAlpha(60),
                    offset: const Offset(0, 16),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Hello Kurdistan',
                  style: TextStyle(fontSize: fontSize),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
