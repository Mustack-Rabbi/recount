import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

class ScreenController extends GetxController {
  RxBool isVisible = false.obs;

  RxBool switchButton = false.obs;
  // Timer? _timer;
  // Increment & Decrement
  // Screen One
  RxBool showBadgeSOne = false.obs;
  RxBool isVisibleAddButton = true.obs;
  RxBool isVisibleRemoveButton = true.obs;
  RxInt CounterSOne = 0.obs;
  // Screen Two
  RxInt screenTwoCounter = 0.obs;
  // Screen Three
  RxInt screenThreeCounter = 0.obs;
  RxInt screenThreeCounterGoal = 0.obs;

  // Tap Increment & Decrement

  // Rx<Offset?> tapPosition = Rx<Offset?>(null);
  Rxn<Offset> tapPosition = Rxn<Offset>();
  RxInt TapIncDecCounter = 0.obs;

  ///rabbi
  RxString sTapText = "".obs;
  Timer? _tapTimer;
  int _tapCount = 0;

  var items = ["Screen 1", "Screen 2", "Screen 3"].obs;

  void handleTap(TapDownDetails details) {
    _tapCount++;

    if (_tapTimer != null && _tapTimer!.isActive) {
      _tapTimer!.cancel();
    }

    _tapTimer = Timer(const Duration(seconds: 1, milliseconds: 500), () {
      if (_tapCount == 1) {
        increment(TapIncDecCounter);
        sTapTextFunction("+1");
      } else if (_tapCount == 2) {
        decrement(TapIncDecCounter);
        sTapTextFunction("-1");
      }
      _tapCount = 0;
    });

    updateTapPosition(details);
    resetTapPosition();
  }

  // Counter Increment
  // void increment(RxInt counter) {
  //   counter.value++;
  // }

  // Counter Decrement
  // void decrement(RxInt counter) {
  //   counter.value--;
  // }

  // Tap Position Update
  void updateTapPosition(TapDownDetails details) {
    tapPosition.value = details.localPosition;
  }

  // Tap Text Update
  void sTapTextFunction(String value) {
    sTapText.value = value;
  }

  // Reset Tap Position
  void resetTapPosition() {
    Future.delayed(Duration(seconds: 1), () {
      tapPosition.value = null;
      sTapText.value = "";
    });
  }

  // void updateTapPosition(TapDownDetails details) {
  //   tapPosition.value = details.localPosition;
  // }

  // void resetTapPosition() {
  //   Future.delayed(Duration(seconds: 2), () {
  //     tapPosition.value = null;
  //   });

  //   // _timer?.cancel();

  //   // _timer = Timer(Duration(seconds: 2), () {
  //   //   tapPosition.value = null;
  //   // });

  //   // @override
  //   // void onClose() {
  //   //   _timer?.cancel();
  //   //   super.onClose();
  //   // }
  // }

  //

  void reorderItems(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) newIndex--;
    final item = items.removeAt(oldIndex);
    items.insert(newIndex, item);
  }

  void increment(RxInt incrementValue) {
    incrementValue = incrementValue++;
  }

  void decrement(RxInt decrementValue) {
    decrementValue = decrementValue--;
  }

  void trueFalseFunction(RxBool x) {
    x.value = !x.value;
  }

  void switchButtonFunction() {
    switchButton.value = !switchButton.value;
  }

  void screenThreeCounterFunctionInc() {
    screenThreeCounter++;
  }

  void screenThreeCounterFunctionDec() {
    screenThreeCounter--;
  }

  // Number to Words

  numberToWords(number) {
    if (number == 0) return "Zero";

    final List<String> units = [
      "",
      "One",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
    ];
    final List<String> teens = [
      "Ten",
      "Eleven",
      "Twelve",
      "Thirteen",
      "Fourteen",
      "Fifteen",
      "Sixteen",
      "Seventeen",
      "Eighteen",
      "Nineteen",
    ];

    final List<String> tens = [
      "",
      "",
      "Twenty",
      "Thirty",
      "Forty",
      "Fifty",
      "Sixty",
      "Seventy",
      "Eighty",
      "Ninety",
    ];

    if (number < 10) {
      return units[number];
    } else if (number < 20) {
      return teens[number - 10];
    } else if (number < 100) {
      int ten = number ~/ 10;
      int unit = number % 10;
      return "${tens[ten]} ${units[unit]}".trim();
    } else {
      return "Number Too Large";
    }
  }
}
