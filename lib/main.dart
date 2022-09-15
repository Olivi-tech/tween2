import 'package:flutter/material.dart';
import 'package:tween2/animated_opacity.dart';
import 'package:tween2/animated_positioned.dart';
import 'package:tween2/mycontainer.dart';
import 'package:tween2/physical_model_animated.dart';
import 'package:tween2/progress_indicator.dart';

void main() {
  runApp(const MaterialApp(
    home: MyAnimatedPosition(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.deepPurple[900],
          child: Center(
            child: TweenAnimationBuilder(
              duration: const Duration(seconds: 2),
              tween: IntTween(begin: 0, end: 100),
              builder: (BuildContext context, int value, Widget? child) {
                return Text(
                  '$value',
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    //backgroundColor: Colors.deepPurpleAccent,
                  ),
                );
              },
            ),
          )),
    );
  }
}
