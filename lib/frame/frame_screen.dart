import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recount/button/badge_button.dart';
import 'package:recount/function/custom_function.dart';
import 'package:recount/main.dart';

import '../screen/increment_decrement/inc_dec_screen_one.dart';

class FrameScreen extends StatefulWidget {
  final Widget displayScreen;
  final int numberOfScreen;
  final int initialScreen;
  final VoidCallback previousScreen;
  final VoidCallback nextScreen;
  // bool widgetEdite;
  final Function? widgetEditeFunction;
  final Function? setScreenUp;
  // bool showBadge;
  // // final bool showBadge;

  FrameScreen({
    super.key,
    required this.displayScreen,
    required this.numberOfScreen,
    required this.initialScreen,
    required this.previousScreen,
    required this.nextScreen,
    required this.widgetEditeFunction,
    this.setScreenUp,
  });

  @override
  State<FrameScreen> createState() => _FrameScreenState();
}

class _FrameScreenState extends State<FrameScreen> {
  // Color

// List <Color> textColor = [Color(0xFF212121), Color(0xFF757575), Color(0xFFB00020), Color(0xFF4CAF50),];
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
  bool showDown = false;

  // bool iiBadge = CustomFunction.iBadge;
  // bool showBadge = false;

  // BadgeButton obj = BadgeButton();
  bool widgetEdite = false;

  @override
  Widget build(BuildContext context) {
    // obj.isVisible = widgetEdite;

    bool widgetEditeFunction() {
      setState(() {
        widgetEdite = !widgetEdite;
      });
      return widgetEdite;
    }

    return Container(
      decoration: BoxDecoration(color: color["vibrantPurpleColor"]),
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            // color: Colors.red.withOpacity(.6),
            height: 40,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Increment & Decrement",
                    style: TextStyle(
                        color: color["lightPurpleColor"],
                        fontWeight: FontWeight.bold)),

                //     onPressed: () {
                //       showAdaptiveDialog(
                //           context: context,
                //           builder: (context) {
                //             return AlertDialog(
                //               title: Text("Settings"),
                //               actions: [
                //                 Row(
                //                   children: [
                //                     Icon(Icons.remove),
                //                     Text("Add Icon"),
                //                     IconButton(
                //                         onPressed: () {
                //                           setState(() {
                //                             iconButtonAdd =
                //                                 !iconButtonAdd;
                //                           });
                //                         },
                //                         icon: Icon(Icons.done))
                //                   ],
                //                 ),
                //                 Icon(Icons.add),
                //                 Icon(Icons.add),
                //                 Icon(Icons.add),
                //                 TextButton(
                //                     onPressed: () {
                //                       Navigator.pop(context);
                //                     },
                //                     child: Text("Close")),
                //               ],
                //             );
                //           });
                //     },
                //     icon: Icon(Icons.more_vert))
              ],
            ),
          ),
          Stack(children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.9),
                ),
                height: 200,
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                width: double.infinity,
                child: widget
                    .displayScreen // ekhane ami digin korbo, ekhane user kaj korte parbe..
                ),
            // IconButton(
            // IncDecScreenOne(
            //     buttonColor: color["deepPurpleColor"]!,
            //     textColor: textColor["textPrimaryColor"]!),
            if (showDown == false)
              Container(
                height: 200,
                // color: Colors.teal,
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      showDown = !showDown;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down,
                      color: color["deepPurpleColor"]),
                ),
              )
          ]),
          if (showDown == true)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color["lightPurpleColor"],
              ),
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 40,
              width: double.infinity,
              child: Center(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert,
                            color: color["deepPurpleColor"])),
                    Expanded(
                        child: (showBadge.value == false)
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  (widget.initialScreen > 0)
                                      ? IconButton(
                                          onPressed: widget.previousScreen,
                                          icon: Icon(
                                              Icons.arrow_back_ios_rounded,
                                              color: color["deepPurpleColor"]))
                                      : IconButton(
                                          onPressed: null,
                                          icon: Icon(
                                            Icons.arrow_back_ios_rounded,
                                            color: color["lightPurpleColor"],
                                          )),
                                  Text(
                                    "${widget.initialScreen + 1}/${widget.numberOfScreen}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: textColor["textPrimaryColor"],
                                        fontWeight: FontWeight.w600),
                                  ),
                                  (widget.initialScreen <
                                          (widget.numberOfScreen - 1))
                                      ? IconButton(
                                          onPressed: widget.nextScreen,
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: color["deepPurpleColor"],
                                          ))
                                      : IconButton(
                                          onPressed: null,
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: color["lightPurpleColor"],
                                          ))
                                ],
                              )
                            : Center(
                                child: Text(
                                "Edite Widget",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(.6)),
                              ))),

                    // (widget.showBadge == false)
                    //     ?

                    IconButton(
                        // onPressed: widget.widgetEditeFunction,

                        onPressed: () {
                          // widgetEdite = !widgetEdite;
                          // widget.widgetEditeFunction!;

                          setState(() {
                            widget.setScreenUp;
                            showBadge.value = !showBadge.value;

                            // BadgeButton.showBadge = !BadgeButton.showBadge;
                          });
                        },
                        icon: Icon(
                          (showBadge.value == false)
                              ? Icons.widgets
                              : Icons.done,
                          color: color["deepPurpleColor"],
                        )),

                    // (widget.showBadge == false)
                    //     ? IconButton(
                    //         onPressed: () {
                    //           setState(() {
                    //             // widgetEdite = !widgetEdite;
                    //             widget.showBadge = true;

                    //             print(widget.showBadge);
                    //           });
                    //         },
                    //         icon: Icon(
                    //           Icons.widgets,
                    //           color: color["deepPurpleColor"],
                    //         ))
                    //     : IconButton(
                    //         onPressed: () {
                    //           setState(() {
                    //             widgetEdite = !widgetEdite;
                    //             widget.showBadge = false;
                    //             print(widget.showBadge);
                    //           });
                    //         },
                    //         icon: Icon(Icons.done,
                    //             color: color["deepPurpleColor"])),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            showDown = !showDown;
                          });
                        },
                        icon: Icon(Icons.arrow_drop_up,
                            color: color["deepPurpleColor"])),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
