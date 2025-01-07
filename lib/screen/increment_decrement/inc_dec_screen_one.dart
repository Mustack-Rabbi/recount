import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:badges/badges.dart' as badges;
import 'package:recount/button/badge_button.dart';
import 'package:recount/controller/screen_controller.dart';
import 'package:recount/main.dart';

class IncDecScreenOne extends StatelessWidget {
  const IncDecScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, Color> textColor = {
      "textPrimaryColor": Color(0xFF212121),
      "textSecondaryColor": Color(0xFF757575),
      "textHighlightColor": Color(0xFF0086AD),
      "textErrorColor": Color(0xFFB00020),
      "textSuccessColor": Color(0xFF4CAF50),
      "textDisabledColor": Color(0xFF9E9E9E),
    };
    Map<String, Color> color = {
      "lightPurpleColor": Color(0xFFF2CEFF),
      "softPurpleColor": Color(0xFFE295FE),
      "vibrantPurpleColor": Color(0xFFCB40FC),
      "deepPurpleColor": Color(0xFFBB15F6),
    };

    bool iconButtonAdd = true;

    //eti poriborton korte hobe
    bool isVisibleRemoveButton = true;
    bool isVisibleAddButton = true;

    bool isVisible(bool globalX, bool localX) {
      bool showX;

      if (globalX == true) {
        showX = true;
      } else {
        showX = localX;
      }

      return showX;
    }

    ScreenController screenController = Get.put(ScreenController());
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BadgeButton(
              isVisible: isVisibleRemoveButton,
              customWidget: IconButton(
                  onPressed: () {
                    screenController.decrement();
                  },
                  icon: Icon(
                    Icons.remove,
                    color: color["deepPurpleColor"],
                  )),
              onTap: () {
                // setState(() {
                //   isVisibleRemoveButton = !isVisibleRemoveButton;
                // });
              },
            ),
            Obx(() {
              return Text(
                  screenController.incDecScreenOneIncrement.value.toString(),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: textColor["textPrimaryColor"],
                  ));
            }),
            Visibility(
              visible: true,
              child: BadgeButton(
                isVisible: false,
                customWidget: IconButton(
                    onPressed: () {
                      screenController.increment();
                      // print(isVisibleRemoveButton);
                      // setState(() {
                      //   screenController.increment();

                      //   print(
                      //       "numbr $screenController.incDecScreenOneIncrement");
                      // });
                    },
                    icon: Icon(Icons.add, color: color["deepPurpleColor"])),
                onTap: () {
                  // setState(() {
                  //   isVisibleAddButton = !isVisibleAddButton;
                  // });
                  // print(isVisibleAddButton);
                },
              ),
            )
          ],
        )
      ]),
    );
  }
}
