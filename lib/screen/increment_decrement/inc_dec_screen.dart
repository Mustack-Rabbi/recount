import 'package:flutter/material.dart';
import 'package:recount/frame/frame_screen.dart';

import '../../function/custom_function.dart';
import '../../main.dart';
import 'inc_dec_screen_one.dart';
import 'inc_dec_screen_two.dart';

class IncDecScreen extends StatefulWidget {
  const IncDecScreen({
    super.key,
  });

  @override
  State<IncDecScreen> createState() => _IncDecScreenState();
}

class _IncDecScreenState extends State<IncDecScreen> {
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
  // bool isVisible = false;
  // bool showDown = false;
  // bool widgetEdite = false;

  List<Widget> screenList = [
    IncDecScreenOne(),
    IncDecScreenTwo(),
    Center(
      child: Text("03 screen"),
    ),
  ];
  late int numberOfScreen;
  int initialScreen = 0;

  @override
  void initState() {
    numberOfScreen = screenList.length;
    // TODO: implement initState
    super.initState();
  }

  // void setScreenUp() {
  //            showBadge.value = !showBadge.value;
  //   setState(() {
  //     initialScreen++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // numberOfScreen = numberOfScreen;
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FrameScreen(
          widgetsVCB: () {
            //  widgetEdite = !widgetEdite;
            //             widget.widgetEditeFunction!;

            setState(() {
              // IncDecScreenOne().createState();

              // widget.setScreenUp;
              showBadge.value = !showBadge.value;

              // BadgeButton.showBadge = !BadgeButton.showBadge;
            });

            setState(() {});
          },
          displayScreen: screenList[initialScreen],
          numberOfScreen: numberOfScreen,
          initialScreen: initialScreen,
          nextScreenVCB: () {
            setState(() {
              if (initialScreen < (numberOfScreen - 1)) {
                initialScreen++;
              }

              print("numbr $initialScreen");
            });
          },
          previousScreenVCB: () {
            setState(() {
              if (initialScreen > 0) {
                initialScreen--;
              }

              print("numbr $initialScreen");
            });
          },
        )
      ]),
    );
  }
}
