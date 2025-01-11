import 'package:flutter/material.dart';

class TapIncDecOne extends StatelessWidget {
  const TapIncDecOne({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        print("Tap");
      },
      onDoubleTap: () {
        print("Double Tap");
      },
      child: Center(
          child: Text("Tap to increase, double-tap to decrease.",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500))),
    );
  }
}
