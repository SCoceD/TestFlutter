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
  List colors = [
    Colors.red,
    Colors.green,
    Colors.yellow
  ]; // list of colors for realize random color
  Random random = new Random(); // random generator
  int color =
      0; // variable for contain random number, from this number get random color
  // method for make new random color
  void changeIndex() {
    setState(() => color = random.nextInt(3));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // This method while be called whet tap in random places on the screen
          changeIndex();
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
            color: colors[color], // set random color
          ),
          width: 3810.0,
          height: 3810.0,
        ),
      ),
    );
  }
}
