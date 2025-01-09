import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recount/button/badge_button.dart';
import 'package:recount/controller/screen_controller.dart';

class IncDecScreenOne extends StatelessWidget {
  const IncDecScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, Color> textColor = {
      "textPrimaryColor": const Color(0xFF212121),
      "textSecondaryColor": const Color(0xFF757575),
      "textHighlightColor": const Color(0xFF0086AD),
      "textErrorColor": const Color(0xFFB00020),
      "textSuccessColor": const Color(0xFF4CAF50),
      "textDisabledColor": const Color(0xFF9E9E9E),
    };
    Map<String, Color> color = {
      "lightPurpleColor": const Color(0xFFF2CEFF),
      "softPurpleColor": const Color(0xFFE295FE),
      "vibrantPurpleColor": const Color(0xFFCB40FC),
      "deepPurpleColor": const Color(0xFFBB15F6),
    };

    // bool iconButtonAdd = true;

    // //eti poriborton korte hobe
    // bool isVisibleRemoveButton = true;
    // bool isVisibleAddButton = true;

    // bool isVisible(bool globalX, bool localX) {
    //   bool showX;

    //   if (globalX == true) {
    //     showX = true;
    //   } else {
    //     showX = localX;
    //   }

    //   return showX;
    // }

    ScreenController screenController = Get.put(ScreenController());
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Obx(
            () => BadgeButton(
              isVisibleWidget: screenController.showBadgeSOne.value ||
                  screenController.isVisibleRemoveButton.value,
              isVisible: screenController.isVisibleRemoveButton.value,
              // badgeIcon: screenController.isVisibleRemoveButton.value,
              customWidget: IconButton(
                  onPressed: () {
                    screenController.decrement(screenController.CounterSOne);
                  },
                  icon: Icon(
                    Icons.remove,
                    color: color["deepPurpleColor"],
                  )),
              onTap: () {
                screenController
                    .trueFalseFunction(screenController.isVisibleRemoveButton);
                // screenController.increment(screenController.screenOneCounter);
                // setState(() {
                //   isVisibleRemoveButton = !isVisibleRemoveButton;
                // });
              },
            ),
          ),
          Obx(() {
            return Text(screenController.CounterSOne.value.toString(),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: textColor["textPrimaryColor"],
                ));
          }),
          Obx(
            () => BadgeButton(
              isVisibleWidget: screenController.showBadgeSOne.value ||
                  screenController.isVisibleAddButton.value,
              // badgeIcon: screenController.isVisibleAddButton.value,
              isVisible: screenController.isVisibleAddButton.value,
              customWidget: IconButton(
                  onPressed: () {
                    screenController.increment(screenController.CounterSOne);
                    // screenController.increment();
                  },
                  icon: Icon(Icons.add, color: color["deepPurpleColor"])),
              onTap: () {
                screenController
                    .trueFalseFunction(screenController.isVisibleAddButton);

                // print(screenController.isVisibleAddButton.value);
                // setState(() {
                //   isVisibleAddButton = !isVisibleAddButton;
                // });
                // print(isVisibleAddButton);
              },
            ),
          ),
        ],
      )
    ]);
  }
}
