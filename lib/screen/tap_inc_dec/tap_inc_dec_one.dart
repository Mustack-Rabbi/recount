import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recount/controller/screen_controller.dart';

class TapIncDecOne extends StatelessWidget {
  const TapIncDecOne({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenController screenController = Get.put(ScreenController());

    return Stack(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            screenController.increment(screenController.TapIncDecCounter);
            // Get.snackbar("title", "message",
            //     snackPosition: SnackPosition.BOTTOM);
            print("Tap");
          },
          onDoubleTap: () {
            screenController.decrement(screenController.TapIncDecCounter);

            print("Double Tap");
          },
          onLongPress: () => screenController.TapIncDecCounter.value = 0,
          child: Center(
              // child: Text("Tap to increase, double-tap to decrease.", // Tap to increase, double-tap to decrease, long press to reset.
              child: Obx(
            () => Text("${screenController.TapIncDecCounter}",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          )),
        ),
      ],
    );
  }
}
