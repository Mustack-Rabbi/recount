import 'package:flutter/material.dart';

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
            Text(increment.toString(),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: textColor["textPrimaryColor"],
                )),
            if (iconButtonAdd == true)
              IconButton(
                  onPressed: () {
                    setState(() {
                      increment++;

                      print("numbr $increment");
                    });
                  },
                  icon: Icon(Icons.add, color: color["deepPurpleColor"])),
          ],
        )
      ]),
    );
  }
}
