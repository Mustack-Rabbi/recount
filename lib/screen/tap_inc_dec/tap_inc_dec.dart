import 'package:flutter/material.dart';
import 'package:recount/frame/frame_screen.dart';
import '../../main.dart';
import 'tap_inc_dec_one.dart';

class TapIncDec extends StatefulWidget {
  const TapIncDec({
    super.key,
  });

  @override
  State<TapIncDec> createState() => _TapIncDecState();
}

class _TapIncDecState extends State<TapIncDec> {
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
  int increment = 0;
  bool iconButtonAdd = true;
  // bool isVisible = false;
  // bool showDown = false;
  // bool widgetEdite = false;

  List<Widget> screenList = [
    TapIncDecOne(),
  ];
  late int numberOfScreen;
  int initialScreen = 0;

// Number Of Screen Display
  @override
  void initState() {
    numberOfScreen = screenList.length;

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
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      FrameScreen(
        widgetsVCB: () {
          //  widgetEdite = !widgetEdite;
          //             widget.widgetEditeFunction!;

          setState(() {
            // TapIncDecOne().createState();

            // widget.setScreenUp;
            // showBadge.value = !showBadge.value;

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

            // print("numbr $initialScreen");
          });
        },
        previousScreenVCB: () {
          setState(() {
            if (initialScreen > 0) {
              initialScreen--;
            }

            // print("numbr $initialScreen");
          });
        },
      )
    ]);
  }
}
