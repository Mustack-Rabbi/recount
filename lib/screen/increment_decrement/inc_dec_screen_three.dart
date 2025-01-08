import 'package:flutter/material.dart';

import '../../button/switch_button.dart';

class IncDecScreenThree extends StatefulWidget {
  const IncDecScreenThree({
    super.key,
  });

  @override
  State<IncDecScreenThree> createState() => _IncDecScreenThreeState();
}

class _IncDecScreenThreeState extends State<IncDecScreenThree> {
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
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(increment.toString(),
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: textColor["textPrimaryColor"],
                                )),
                            Text(
                              "${numberToWord[increment]}",
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),

                      // SizedBox(
                      //   height: 20,
                      // ),
                    ]),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Set"),
                    const SizedBox(
                      width: 10,
                    ),
                    SwitchButton(
                      isOn: false,
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // Switch(
                    //   value: true,
                    //   onChanged: (value) {},
                    // ),
                    Container(
                      width: 80,
                      height: 30,
                      child: const Center(
                        child: TextField(
                          cursorColor: Color(0xFFBB15F6),
                          // textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: EdgeInsets.all(5),
                            // labelText: 'value',
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xFFBB15F6), width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xFFBB15F6), width: 2)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Save",
                            style: TextStyle(
                                color: color["deepPurpleColor"],
                                fontWeight: FontWeight.w600)))
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(
              //   height: 30,
              // ),
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
        ],
      ),
    );
  }
}
