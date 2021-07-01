import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Main (start) method of this program
main() => runApp(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: Counter(),
        ),
      ),
    );

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  Random random = new Random(); // random generator
  int colorOne = 0; // variable for contain random number, from this number get random color
  int colorSecond = 0;
  int colorThird = 0;
  // method for make new random color
  void changeColor() {
    setState(() => colorOne = random.nextInt(256));
    setState(() => colorSecond = random.nextInt(256));
    setState(() => colorThird = random.nextInt(256));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // This method while be called whet tap in random places on the screen
          changeColor();
        },
        child: Container(
          child: Center(child: Text('Hey there',
            style: TextStyle(
              fontSize: 25, // Text size
            ),
          ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle, // set form for container;
            color: Color.fromRGBO(colorOne, colorSecond,colorThird, 1.0), // set random color
          ),
          width: 6016.0,
          height: 3384.0,
        ),
      ),
    );
  }
}
