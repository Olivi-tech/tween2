import 'package:flutter/material.dart';

class MyAnimatedPhysicalModel extends StatefulWidget {
  const MyAnimatedPhysicalModel({Key? key}) : super(key: key);

  @override
  State<MyAnimatedPhysicalModel> createState() =>
      _MyAnimatedPhysicalModelState();
}

class _MyAnimatedPhysicalModelState extends State<MyAnimatedPhysicalModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            duration: const Duration(seconds: 5),
            shadowColor: Colors.black,
            color: Colors.green,
            elevation: 40.0,
            child: widget,
            // child: Container(
            //   width: 150.0,
            //   height: 150.0,
            //   color: Colors.white,
            // ),
          ),
        ),
      ),
    );
  }
}
