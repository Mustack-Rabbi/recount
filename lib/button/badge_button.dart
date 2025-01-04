import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class BadgeButton extends StatelessWidget {
  final Widget customWidget;
  final VoidCallback onTap;
  final bool showBadge;
  final bool isVisible;
  const BadgeButton(
      {super.key,
      required this.customWidget,
      required this.onTap,
      required this.showBadge,
      required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -10, end: -12),
      badgeAnimation: badges.BadgeAnimation.fade(toAnimate: false),
      onTap: onTap,
      badgeContent: Icon(
        (isVisible == true) ? Icons.remove : Icons.add,
        color: Colors.white,
        size: 10,
      ),
      child: customWidget,

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
  }
}
