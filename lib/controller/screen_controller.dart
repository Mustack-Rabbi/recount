import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenController extends GetxController {
  RxBool isVisible = false.obs;

  RxBool switchButton = false.obs;
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
  Rx<Offset?> tapPosition = Rx<Offset?>(null);
  RxInt TapIncDecCounter = 0.obs;

  var items = ["Screen 1", "Screen 2", "Screen 3"].obs;

  void reorderItems(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) newIndex--;
    final item = items.removeAt(oldIndex);
    items.insert(newIndex, item);
  }

  increment(RxInt incrementValue) {
    incrementValue++;
  }

  decrement(RxInt decrementValue) {
    decrementValue--;
  }

  trueFalseFunction(RxBool x) {
    x.value = !x.value;
  }

  switchButtonFunction() {
    switchButton.value = !switchButton.value;
  }

  screenThreeCounterFunctionInc() {
    screenThreeCounter++;
  }

  screenThreeCounterFunctionDec() {
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
