import 'package:flutter/material.dart';

class MyOpacity extends StatefulWidget {
  const MyOpacity({Key? key}) : super(key: key);

  @override
  State<MyOpacity> createState() => _MyOpacityState();
}

class _MyOpacityState extends State<MyOpacity> {
  double opacity = 1.0;

  void getValue() {
    setState(() {
      opacity = opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            duration: const Duration(seconds: 2),
            opacity: opacity,
            curve: Curves.bounceInOut,
            child: const FlutterLogo(
              size: 100.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
              onPressed: getValue,
              child: const Text('Opacity'),
            ),
          ),
        ],
      ),
    ));
  }
}
