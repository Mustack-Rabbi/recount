import 'package:flutter/material.dart';
import 'package:recount/frame/frame_screen.dart';

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
  // bool showDown = false;
  // bool widgetEdite = false;

  List<Widget> screenList = [
    IncDecScreenOne(),
    IncDecScreenTwo(),
    Center(
      child: Text("03 screen"),
    ),
    Center(
      child: Text("04 screen"),
    ),
    Center(
      child: Text("05 screen"),
    ),
    Center(
      child: Text("06 screen"),
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

  @override
  Widget build(BuildContext context) {
    // numberOfScreen = numberOfScreen;
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FrameScreen(
          displayScreen: screenList[initialScreen],
          numberOfScreen: numberOfScreen,
          initialScreen: initialScreen,
          nextScreen: () {
            setState(() {
              if (initialScreen < (numberOfScreen - 1)) {
                initialScreen++;
              }

              print("numbr $initialScreen");
            });
          },
          previousScreen: () {
            setState(() {
              if (initialScreen > 0) {
                initialScreen--;
              }

              print("numbr $initialScreen");
            });
          },

          //     Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     IconButton(
          //         onPressed: () {
          //           setState(() {
          //             increment--;
          //           });
          //         },
          //         icon: Icon(
          //           Icons.remove,
          //           color: color["deepPurpleColor"],
          //         )),
          //     Text(increment.toString(),
          //         style: TextStyle(
          //           fontSize: 22,
          //           fontWeight: FontWeight.w600,
          //           color: textColor["textPrimaryColor"],
          //         )),
          //     if (iconButtonAdd == true)
          //       IconButton(
          //           onPressed: () {
          //             setState(() {
          //               increment++;

          //               print("numbr $increment");
          //             });
          //           },
          //           icon: Icon(Icons.add, color: color["deepPurpleColor"])),
          //   ],
          // )
        )
      ]),
    );
  }
}



// import 'package:flutter/material.dart';

// class IncDecScreenOne extends StatefulWidget {
//   const IncDecScreenOne({super.key});

//   @override
//   State<IncDecScreenOne> createState() => _IncDecScreenOneState();
// }

// class _IncDecScreenOneState extends State<IncDecScreenOne> {
//   // Color

// // List <Color> textColor = [Color(0xFF212121), Color(0xFF757575), Color(0xFFB00020), Color(0xFF4CAF50),];
//   Map<String, Color> textColor = {
//     "textPrimaryColor": Color(0xFF212121),
//     "textSecondaryColor": Color(0xFF757575),
//     "textHighlightColor": Color(0xFF0086AD),
//     "textErrorColor": Color(0xFFB00020),
//     "textSuccessColor": Color(0xFF4CAF50),
//     "textDisabledColor": Color(0xFF9E9E9E),
//   };

//   Map<String, Color> color = {
//     "lightPurpleColor": Color(0xFFF2CEFF),
//     "softPurpleColor": Color(0xFFE295FE),
//     "vibrantPurpleColor": Color(0xFFCB40FC),
//     "deepPurpleColor": Color(0xFFBB15F6),
//   };

//   int increment = 0;
//   bool iconButtonAdd = true;
//   bool showDown = false;
//   bool widgetEdite = false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(color: color["vibrantPurpleColor"]),
//       padding: EdgeInsets.all(8),
//       child: Column(
//         children: [
//           Container(
//             // color: Colors.red.withOpacity(.6),
//             height: 40,
//             width: double.infinity,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Increment & Decrement",
//                     style: TextStyle(
//                         color: color["lightPurpleColor"],
//                         fontWeight: FontWeight.bold)),
//                 // IconButton(
//                 //     onPressed: () {
//                 //       showAdaptiveDialog(
//                 //           context: context,
//                 //           builder: (context) {
//                 //             return AlertDialog(
//                 //               title: Text("Settings"),
//                 //               actions: [
//                 //                 Row(
//                 //                   children: [
//                 //                     Icon(Icons.remove),
//                 //                     Text("Add Icon"),
//                 //                     IconButton(
//                 //                         onPressed: () {
//                 //                           setState(() {
//                 //                             iconButtonAdd =
//                 //                                 !iconButtonAdd;
//                 //                           });
//                 //                         },
//                 //                         icon: Icon(Icons.done))
//                 //                   ],
//                 //                 ),
//                 //                 Icon(Icons.add),
//                 //                 Icon(Icons.add),
//                 //                 Icon(Icons.add),
//                 //                 TextButton(
//                 //                     onPressed: () {
//                 //                       Navigator.pop(context);
//                 //                     },
//                 //                     child: Text("Close")),
//                 //               ],
//                 //             );
//                 //           });
//                 //     },
//                 //     icon: Icon(Icons.more_vert))
//               ],
//             ),
//           ),
//           Stack(children: [
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.white.withOpacity(.9),
//               ),
//               height: 200,
//               padding: EdgeInsets.symmetric(
//                 horizontal: 8,
//               ),
//               width: double.infinity,
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         IconButton(
//                             onPressed: () {
//                               setState(() {
//                                 increment--;
//                               });
//                             },
//                             icon: Icon(
//                               Icons.remove,
//                               color: color["deepPurpleColor"],
//                             )),
//                         Text(increment.toString(),
//                             style: TextStyle(
//                               fontSize: 22,
//                               fontWeight: FontWeight.w600,
//                               color: textColor["textPrimaryColor"],
//                             )),
//                         if (iconButtonAdd == true)
//                           IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   increment++;
//                                 });
//                               },
//                               icon: Icon(Icons.add,
//                                   color: color["deepPurpleColor"])),
//                       ],
//                     )
//                   ]),
//             ),
//             if (showDown == false)
//               Container(
//                 height: 200,
//                 // color: Colors.teal,
//                 alignment: Alignment.bottomRight,
//                 child: IconButton(
//                   onPressed: () {
//                     setState(() {
//                       showDown = !showDown;
//                     });
//                   },
//                   icon: Icon(Icons.arrow_drop_down,
//                       color: color["deepPurpleColor"]),
//                 ),
//               )
//           ]),
//           if (showDown == true)
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: color["lightPurpleColor"],
//               ),
//               margin: EdgeInsets.symmetric(vertical: 5),
//               height: 40,
//               width: double.infinity,
//               child: Center(
//                 child: Row(
//                   children: [
//                     Expanded(
//                         child: (widgetEdite == false)
//                             ? Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(Icons.arrow_back_ios_rounded,
//                                           color: color["deepPurpleColor"])),
//                                   Text(
//                                     "1/3",
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         color: textColor["textPrimaryColor"],
//                                         fontWeight: FontWeight.w600),
//                                   ),
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(
//                                         Icons.arrow_forward_ios_rounded,
//                                         color: color["deepPurpleColor"],
//                                       )),
//                                 ],
//                               )
//                             : Center(
//                                 child: Text(
//                                 "Change Widget",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 16,
//                                     color: Colors.black.withOpacity(.6)),
//                               ))),
//                     (widgetEdite == false)
//                         ? IconButton(
//                             onPressed: () {
//                               setState(() {
//                                 widgetEdite = !widgetEdite;
//                               });
//                             },
//                             icon: Icon(
//                               Icons.widgets,
//                               color: color["deepPurpleColor"],
//                             ))
//                         : IconButton(
//                             onPressed: () {
//                               setState(() {
//                                 widgetEdite = !widgetEdite;
//                               });
//                             },
//                             icon: Icon(Icons.done,
//                                 color: color["deepPurpleColor"])),
//                     IconButton(
//                         onPressed: () {
//                           setState(() {
//                             showDown = !showDown;
//                           });
//                         },
//                         icon: Icon(Icons.arrow_drop_up,
//                             color: color["deepPurpleColor"])),
//                   ],
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
