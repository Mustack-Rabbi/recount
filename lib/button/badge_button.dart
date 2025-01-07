import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'package:recount/controller/screen_controller.dart';
import 'package:recount/main.dart';

class BadgeButton extends StatefulWidget {
  final Widget customWidget;
  final VoidCallback onTap;
  final bool isVisible;
  BadgeButton(
      {super.key,
      required this.customWidget,
      required this.onTap,
      required this.isVisible});

  @override
  State<BadgeButton> createState() => _BadgeButtonState();
}

class _BadgeButtonState extends State<BadgeButton> {
  // bool showBadge = false;
  // static bool myBadgeBool() {
  //   return false;
  // }

  // callBack() {
  //   print("badge_button - callBackss");
  // }
  // late bool? mybg = widget.isVisible;

  @override
  Widget build(BuildContext context) {
    ScreenController screenController = Get.put(ScreenController());
    return ValueListenableBuilder<bool>(
      valueListenable: showBadge,
      builder: (context, value, child) {
        return Obx(() {
          return badges.Badge(
            showBadge: screenController.showBadge.value,
            position: badges.BadgePosition.topEnd(top: -10, end: -12),
            badgeAnimation: badges.BadgeAnimation.fade(toAnimate: false),
            onTap: widget.onTap,
            badgeContent: Icon(
              (widget.isVisible == true) ? Icons.remove : Icons.add,
              color: Colors.white,
              size: 10,
            ),
            child: widget.customWidget,

            //  IconButton(
            //     onPressed: () {
            //       setState(() {
            //         increment--;
            //       });
            //     },
            //     icon: Icon(
            //       Icons.remove,
            //       color: color["deepPurpleColor"],
            //     )),
          );
        });
      },
    );
  }
}
