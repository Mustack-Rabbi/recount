import 'package:get/get.dart';

class ScreenController extends GetxController {
  RxBool isVisible = false.obs;
  RxBool isVisibleRemoveButton = true.obs;
  RxBool isVisibleAddButton = true.obs;
  RxBool showBadge = false.obs;

  RxBool switchButton = false.obs;

  RxInt incDecScreenOneIncrement = 0.obs;
  RxInt screenThreeCounter = 0.obs;
  RxInt screenThreeCounterGoal = 0.obs;

  increment(RxInt incrementValue) {
    incrementValue++;

    // incDecScreenOneIncrement.value++;
  }

  decrement() {
    incDecScreenOneIncrement.value--;
  }

  showBadgefunction() {
    showBadge.value = !showBadge.value;
  }

  isVisibleAddButtonFunction() {
    isVisibleAddButton.value = !isVisibleAddButton.value;
  }

  isVisibleRemoveButtonFunction() {
    isVisibleRemoveButton.value = !isVisibleRemoveButton.value;
  }

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

  screenThreeCounterFunction() {
    screenThreeCounter = RxInt(0);
  }
}
