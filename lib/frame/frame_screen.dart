import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recount/controller/screen_controller.dart';
import 'package:recount/main.dart';

class FrameScreen extends StatefulWidget {
  final Widget displayScreen;
  final int numberOfScreen;
  final int initialScreen;
  final VoidCallback previousScreenVCB;
  final VoidCallback nextScreenVCB;
  final VoidCallback widgetsVCB;
  // bool widgetEdite;

  // bool showBadge;
  // // final bool showBadge;

  const FrameScreen({
    super.key,
    required this.displayScreen,
    required this.numberOfScreen,
    required this.initialScreen,
    required this.previousScreenVCB,
    required this.nextScreenVCB,
    required this.widgetsVCB,
  });

  @override
  State<FrameScreen> createState() => _FrameScreenState();
}

class _FrameScreenState extends State<FrameScreen> {
  // Color

// List <Color> textColor = [Color(0xFF212121), Color(0xFF757575), Color(0xFFB00020), Color(0xFF4CAF50),];
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
  bool showDown = false;

  // bool iiBadge = CustomFunction.iBadge;
  // bool showBadge = false;

  // BadgeButton obj = BadgeButton();
  // bool widgetEdite = false;

  // List<String> itemsList = ["item1", "item2", "item3"];

  @override
  Widget build(BuildContext context) {
    // obj.isVisible = widgetEdite;

    // bool widgetEditeFunction() {
    //   setState(() {
    //     widgetEdite = !widgetEdite;
    //   });
    //   return widgetEdite;
    // }

    ScreenController screenController = Get.put(ScreenController());

    return Container(
      decoration: BoxDecoration(color: color["vibrantPurpleColor"]),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
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
                padding: const EdgeInsets.symmetric(
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
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: 40,
              width: double.infinity,
              child: Center(
                child: Row(
                  children: [
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(Icons.more_vert,
                    //         color: color["deepPurpleColor"])),

                    PopupMenuButton(
                        position: PopupMenuPosition.under,
                        menuPadding: EdgeInsets.zero,
                        color: Colors.green,
                        icon: Icon(
                          Icons.more_vert,
                        ),
                        itemBuilder: (BuildContext context) => [
                              PopupMenuItem(
                                  padding: EdgeInsets.zero,
                                  // value: 0,
                                  child: SizedBox(
                                      width: 90,
                                      height: 100,
                                      child: Obx(
                                        () => ReorderableListView(
                                          children: [
                                            for (int i = 0;
                                                i <
                                                    screenController
                                                        .items.length;
                                                i++)
                                              Container(
                                                margin: const EdgeInsets.all(5),
                                                key: ValueKey(
                                                    screenController.items[i]),
                                                color: Colors.red,
                                                height: 30,
                                                width: 90,
                                                child: Text(
                                                    '${screenController.items[i]}'),
                                              ),
                                            // ListTile(
                                            //   key: ValueKey(
                                            //       screenController.items[i]),
                                            //   title: Text(
                                            //       '${screenController.items[i]}'),
                                            // )
                                          ],
                                          onReorder:
                                              screenController.reorderItems,
                                        ),
                                      )))
                            ]),
                    // Obx(
                    //   () => PopupMenuButton(
                    //       icon: Icon(
                    //         Icons.more_vert,
                    //         color: color["deepPurpleColor"],
                    //       ),
                    //       itemBuilder: (context) {
                    //         return [
                    //           PopupMenuItem(
                    //             child: ReorderableListView(
                    //               children: [
                    //                 for (int i = 0; i < itemsList.length; i++)
                    //                   ListTile(
                    //                     title: Text('${itemsList[i]}'),
                    //                   )
                    //               ],
                    //               onReorder: (int oldIndex, int newIndex) {
                    //                 setState(() {
                    //                   if (newIndex > oldIndex) newIndex--;

                    //                   final item = itemsList.removeAt(oldIndex);
                    //                   itemsList.insert(newIndex, item);
                    //                 });
                    //               },
                    //             ),
                    //           ),
                    //         ];
                    //       }),
                    // ),
                    Obx(
                      () => Expanded(
                          child: (screenController.showBadgeSOne.value == false)
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    (widget.initialScreen > 0)
                                        ? IconButton(
                                            onPressed: widget.previousScreenVCB,
                                            icon: Icon(
                                                Icons.arrow_back_ios_rounded,
                                                color:
                                                    color["deepPurpleColor"]))
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
                                            onPressed: widget.nextScreenVCB,
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
                    ),

                    // (widget.showBadge == false)
                    //     ?

                    IconButton(
                        // onPressed: widget.widgetEditeFunction,

                        // onPressed: () {
                        //   // widgetEdite = !widgetEdite;
                        //   // widget.widgetEditeFunction!;

                        //   setState(() {
                        //     widget.setScreenUp;
                        //     showBadge.value = !showBadge.value;

                        //     // BadgeButton.showBadge = !BadgeButton.showBadge;
                        //   });
                        // },
                        onPressed: () {
                          screenController.trueFalseFunction(
                              screenController.showBadgeSOne);
                        },
                        icon: Obx(
                          () => Icon(
                            (screenController.showBadgeSOne.value == false)
                                ? Icons.widgets
                                : Icons.done,
                            color: color["deepPurpleColor"],
                          ),
                        )),

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
