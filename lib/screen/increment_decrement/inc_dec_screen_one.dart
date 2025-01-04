import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:recount/button/badge_button.dart';

class IncDecScreenOne extends StatefulWidget {
  const IncDecScreenOne({
    super.key,
  });

  @override
  State<IncDecScreenOne> createState() => _IncDecScreenOneState();
}

class _IncDecScreenOneState extends State<IncDecScreenOne> {
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
  int increment = 0;
  bool iconButtonAdd = true;
  // bool showDown = false;
  // bool widgetEdite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   color: Colors.white.withOpacity(.9),
      // ),
      // // height: 200,
      // padding: EdgeInsets.symmetric(
      //   horizontal: 8,
      // ),
      // width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BadgeButton(
                isVisible: false,
                customWidget: IconButton(
                    onPressed: () {
                      setState(() {
                        increment--;
                      });
                    },
                    icon: Icon(
                      Icons.remove,
                      color: color["deepPurpleColor"],
                    )),
                onTap: () {
                  print("Badge Tapped");
                },
                showBadge: true),
            // badges.Badge(
            //   position: badges.BadgePosition.topEnd(top: -10, end: -12),
            //   showBadge: true,
            //   onTap: () {
            //     print("Badge Tapped");
            //   },
            //   badgeContent: Icon(
            //     Icons.remove,
            //     color: Colors.white,
            //     size: 10,
            //   ),
            //   child: IconButton(
            //       onPressed: () {
            //         setState(() {
            //           increment--;
            //         });
            //       },
            //       icon: Icon(
            //         Icons.remove,
            //         color: color["deepPurpleColor"],
            //       )),
            // ),
            Text(increment.toString(),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: textColor["textPrimaryColor"],
                )),
            if (iconButtonAdd == true)
              BadgeButton(
                  isVisible: true,
                  customWidget: IconButton(
                      onPressed: () {
                        setState(() {
                          increment++;

                          print("numbr $increment");
                        });
                      },
                      icon: Icon(Icons.add, color: color["deepPurpleColor"])),
                  onTap: () {},
                  showBadge: true),
          ],
        )
      ]),
    );
  }
}
