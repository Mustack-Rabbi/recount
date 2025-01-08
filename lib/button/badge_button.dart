import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'package:recount/controller/screen_controller.dart';
import 'package:recount/main.dart';

class BadgeButton extends StatelessWidget {
  final Widget customWidget;
  final VoidCallback onTap;
  final bool isVisible;
  final bool isVisibleWidget;
  // final bool badgeIcon;
  const BadgeButton(
      {super.key,
      required this.customWidget,
      required this.onTap,
      required this.isVisible,
      required this.isVisibleWidget});

  // bool showBadge = false;
  @override
  Widget build(BuildContext context) {
    ScreenController screenController = Get.put(ScreenController());
    return Obx(() {
      return Visibility(
        visible: isVisibleWidget,
        child: badges.Badge(
          showBadge: screenController.showBadge.value,
          position: badges.BadgePosition.topEnd(top: -10, end: -12),
          badgeAnimation: const badges.BadgeAnimation.fade(toAnimate: false),
          onTap: onTap,
          badgeContent: Icon(
            (isVisible) ? Icons.remove : Icons.add,
            color: Colors.white,
            size: 10,
          ),
          child: customWidget,
        ),
      );
    });
  }
}
