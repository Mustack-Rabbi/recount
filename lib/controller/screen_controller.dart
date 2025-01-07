import 'package:get/get.dart';

class ScreenController extends GetxController {
  RxBool isVisible = false.obs;
  RxBool isVisibleRemoveButton = true.obs;
  RxBool isVisibleAddButton = true.obs;
  RxBool showBadge = false.obs;

  RxInt incDecScreenOneIncrement = 0.obs;

  increment() {
    incDecScreenOneIncrement.value++;
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
}
