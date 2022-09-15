import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  //bool _Color = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          curve: Curves.bounceInOut,
          duration: const Duration(seconds: 5),
          tween: Tween<double>(begin: 50, end: 200),
          builder: (BuildContext context, double? value, Widget? child) {
            return Container(
              color: Colors.red,
              width: value,
              height: value,
            );
          },
        ),
      ),
    );
  }
}
