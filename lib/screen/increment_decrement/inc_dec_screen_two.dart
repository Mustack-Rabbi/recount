import 'package:flutter/material.dart';

class IncDecScreenTwo extends StatefulWidget {
  const IncDecScreenTwo({
    super.key,
  });

  @override
  State<IncDecScreenTwo> createState() => _IncDecScreenTwoState();
}

class _IncDecScreenTwoState extends State<IncDecScreenTwo> {
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
  // bool showDown = false;
  // bool widgetEdite = false;

  final Map<int, String> numberToWord = {
    0: "Zero",
    1: "One",
    2: "Two",
    3: "Three",
    4: "Four",
    5: "Five",
    6: "Six",
    7: "Seven",
    8: "Eight",
    9: "Nine"
  };

  @override
  Widget build(BuildContext context) {
    return Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(increment.toString(),
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: textColor["textPrimaryColor"],
                      )),
                  Text(
                    "${numberToWord[increment]}",
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      increment = 0;
                    });
                  },
                  icon: Icon(
                    Icons.refresh,
                    color: color["deepPurpleColor"],
                  )),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            increment--;
                          });
                        },
                        icon: Icon(
                          Icons.remove,
                          color: color["deepPurpleColor"],
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            increment++;

                            // print("numbr $increment");
                          });
                        },
                        icon: Icon(Icons.add, color: color["deepPurpleColor"])),
                  ],
                ),
              ),
              // if (iconButtonAdd == true)
            ],
          )
        ]);
  }
}
