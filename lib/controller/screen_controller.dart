import 'package:get/get.dart';

class ScreenController extends GetxController {
  RxBool isVisible = false.obs;

  RxBool switchButton = false.obs;

  // RxInt incDecScreenOneIncrement = 0.obs;

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

  increment(RxInt incrementValue) {
    incrementValue++;

    // incDecScreenOneIncrement.value++;
  }

  decrement(RxInt decrementValue) {
    decrementValue--;
    // incDecScreenOneIncrement.value--;
  }

  trueFalseFunction(RxBool x) {
    x.value = !x.value;
  }

  // showBadgefunction() {
  //   showBadge.value = !showBadge.value;
  // }

  // isVisibleAddButtonFunction() {
  //   isVisibleAddButton.value = !isVisibleAddButton.value;
  // }

  // isVisibleRemoveButtonFunction() {
  //   isVisibleRemoveButton.value = !isVisibleRemoveButton.value;
  // }

  switchButtonFunction() {
    switchButton.value = !switchButton.value;
  }

  screenThreeCounterFunctionInc() {
    screenThreeCounter++;
  }

  // screenThreeCounterFunctionIncTest(RxInt screenThreeCPP) {
  //   screenThreeCPP++;
  // }

  screenThreeCounterFunctionDec() {
    screenThreeCounter--;
  }

  // screenThreeCounterFunction() {
  //   screenThreeCounter = RxInt(0);
  // }

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
