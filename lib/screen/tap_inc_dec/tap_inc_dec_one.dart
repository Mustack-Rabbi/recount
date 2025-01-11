import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recount/controller/screen_controller.dart';

class TapIncDecOne extends StatelessWidget {
  const TapIncDecOne({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenController screenController = Get.put(ScreenController());

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      // onTap er poriborte onTapDown beborhar korle position data pawa jay
      onTapDown: (details) {
        screenController.increment(screenController.TapIncDecCounter);
        // Get.snackbar("title", "message",
        //     snackPosition: SnackPosition.BOTTOM);
        screenController.handleTap(details);
        screenController.updateTapPosition(details);
        screenController.resetTapPosition();

        screenController.sTapTextFunction("+1");
        print(screenController.tapPosition.value);
        print(details);
        print("Tap");
      },

      onDoubleTap: () {
        screenController.decrement(screenController.TapIncDecCounter);

        screenController.sTapTextFunction("-1");

        screenController.resetTapPosition();
      },
      onLongPress: () {
        screenController.TapIncDecCounter.value = 0;
        screenController.sTapTextFunction("reset");
      },
      child: Stack(
        children: [
          Center(
              // child: Text("Tap to increase, double-tap to decrease.", // Tap to increase, double-tap to decrease, long press to reset.
              child: Obx(
            () => Text(
              "${screenController.TapIncDecCounter}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          )),
          Obx(
            () {
              // if (screenController.tapPosition.value != null)
              if (screenController.tapPosition.value != null) {
                return Positioned(
                    top: screenController.tapPosition.value!.dy - 30,
                    left: screenController.tapPosition.value!.dx - 30,
                    child: Text(screenController.sTapText.value,
                        style: const TextStyle(
                          color: Color(0xFFBB15F6),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )));
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
