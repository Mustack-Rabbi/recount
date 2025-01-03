import 'package:flutter/material.dart';

class FrameScreen extends StatefulWidget {
  const FrameScreen({super.key});

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
  bool widgetEdite = false;
  @override
  Widget build(BuildContext context) {
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
                // IconButton(
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
          x
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
                    Expanded(
                        child: (widgetEdite == false)
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_back_ios_rounded,
                                          color: color["deepPurpleColor"])),
                                  Text(
                                    "1/3",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: textColor["textPrimaryColor"],
                                        fontWeight: FontWeight.w600),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: color["deepPurpleColor"],
                                      )),
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
                    (widgetEdite == false)
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                widgetEdite = !widgetEdite;
                              });
                            },
                            icon: Icon(
                              Icons.widgets,
                              color: color["deepPurpleColor"],
                            ))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                widgetEdite = !widgetEdite;
                              });
                            },
                            icon: Icon(Icons.done,
                                color: color["deepPurpleColor"])),
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
