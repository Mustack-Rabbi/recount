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
        // screenController.increment(screenController.TapIncDecCounter);
        // ekhane handleTap _tapTimer er moddhe increment hbe..
        // Get.snackbar("title", "message",
        //     snackPosition: SnackPosition.BOTTOM);
        screenController.handleTap(details);
        screenController.updateTapPosition(details);
        screenController.resetTapPosition();

        // screenController.sTapTextFunction("+1"); // time e dici
        // print("one tap");
        // print(screenController.tapPosition.value);
        // print(details);
        // print("Tap");
      },

      onDoubleTap: () {
        // screenController.decrement(screenController.TapIncDecCounter);
        // eti timer er sathe decrement hbe..
        // screenController.sTapTextFunction("-1"); // time e dichi

        screenController.resetTapPosition();
      },
      onLongPress: () {
        screenController.TapIncDecCounter.value = 0 - 1;
        screenController.sTapTextFunction("reset");
      },
      child: Stack(
        children: [
          Center(
              // child: Text("Tap to increase, double-tap to decrease.", // Tap to increase, double-tap to decrease, long press to reset. tapText == false;
              child: Obx(
            () => (screenController.tapText == false)
                ? const Text(
                    "Tap (+1), double-tap (-1). \n long press to reset (0).",
                    style: TextStyle(color: Colors.black38, fontSize: 16),
                  )
                : Text(
                    "${screenController.TapIncDecCounter}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
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
