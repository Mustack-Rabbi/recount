import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:recount/function/custom_function.dart';

class BadgeButton extends StatefulWidget {
  final Widget customWidget;
  final VoidCallback onTap;
  static bool showBadge = false;
  final bool isVisible;
  const BadgeButton(
      {super.key,
      required this.customWidget,
      required this.onTap,
      required this.isVisible});

  @override
  State<BadgeButton> createState() => _BadgeButtonState();
}

class _BadgeButtonState extends State<BadgeButton> {
  // bool showBadge = false;
  static bool myBadgeBool() {
    return false;
  }

  // bool mybg;

  @override
  Widget build(BuildContext context) {
    bool mBg() {
      bool myBg = BadgeButton.showBadge;
      setState(() {});
      return myBg;
    }

    return badges.Badge(
      showBadge: mBg(),
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
  }
}
