import 'package:flutter/material.dart';

class MyProgressIndicator extends StatefulWidget {
  const MyProgressIndicator({Key? key}) : super(key: key);

  @override
  State<MyProgressIndicator> createState() => _MyProgressIndicatorState();
}

class _MyProgressIndicatorState extends State<MyProgressIndicator> {
  double? val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: 800,
        height: 900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: 1),
              duration: const Duration(seconds: 3),
              builder: (context, double val, Widget? child) {
                return CircularProgressIndicator(
                  value: val,
                  strokeWidth: 150.0,
                  color: Colors.amber,
                  backgroundColor: Colors.teal,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
