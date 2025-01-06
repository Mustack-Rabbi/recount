import 'package:flutter/material.dart';
// import 'package:badges/badges.dart' as badges;
import 'package:recount/button/badge_button.dart';
import 'package:recount/main.dart';

class IncDecScreenOne extends StatefulWidget {
  // final bool showBadge;
  const IncDecScreenOne({
    super.key,

    // required this.showBadge,
  });

  @override
  State<IncDecScreenOne> createState() => _IncDecScreenOneState();
}

class _IncDecScreenOneState extends State<IncDecScreenOne> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

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

  //eti poriborton korte hobe
  bool isVisibleRemoveButton = true;
  bool isVisibleAddButton = true;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    mustack;
  }

  bool isVisible(bool globalX, bool localX) {
    bool showX;

    if (globalX == true) {
      showX = true;
    } else {
      showX = localX;
    }

    return showX;
  }

  late bool mustack;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BadgeButton(
              isVisible: isVisibleRemoveButton,
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
                setState(() {
                  isVisibleRemoveButton = !isVisibleRemoveButton;
                });
              },
            ),
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

            // displayButton(isVisibleAddButton, isVisibleRemoveButton, () {
            //   setState(() {
            //     increment++;
            //   });
            // }, Icons.add)

            // if (isVisible(showBadge.value, isVisibleAddButton) == true)
            // if (showBadge.value || isVisibleAddButton)
            // if (mustack == true)
            Visibility(
              visible: showBadge.value || isVisibleAddButton,
              child: BadgeButton(
                isVisible: isVisibleAddButton,
                customWidget: IconButton(
                    onPressed: () {
                      print(isVisibleRemoveButton);
                      setState(() {
                        increment++;

                        print("numbr $increment");
                      });
                    },
                    icon: Icon(Icons.add, color: color["deepPurpleColor"])),
                onTap: () {
                  setState(() {
                    isVisibleAddButton = !isVisibleAddButton;
                  });
                  print(isVisibleAddButton);
                },
              ),
            )
          ],
        )
      ]),
    );
  }
}
