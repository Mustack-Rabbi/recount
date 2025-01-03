import 'package:flutter/material.dart';

import 'frame/frame_screen.dart';
import 'screen/increment_decrement/inc_dec_screen_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mintGreen = Color(0xFF97dbaf);
  Color appColor = Colors.teal;
  Color lightLime = Color(0xFFc2e6ae);
  Color pastelYellow = Color(0xFFf3e1a7);
  Color blushPink = Color(0xFFf4bbba);

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

  // List<Color> colorLevel1 = [
  //   Color(0xFF212121),
  //   Color(0xFF757575),
  //   Color(0xFFB00020),
  //   Color(0xFF4CAF50),
  //   Color(0xFFF2CEFF),
  //   Color(0xFFE295FE),
  //   Color(0xFFCB40FC),
  //   Color(0xFFBB15F6),
  //   Color(0xFF),
  //   Color(0xFF)
  // ];
  // List<Color> colorLevel2 = [Color(0xFFE295FE), Color(0xFF), Color(0xFF)];
  // List<Color> colorLevel3 = [Color(0xFFCB40FC), Color(0xFF), Color(0xFF)];
  // List<Color> colorLevel4 = [Color(0xFFBB15F6), Color(0xFF), Color(0xFF)];
  // List<Color> colorMain = [
  //   Color(0xFFCB40FC),
  //   Color(0xFFd669fe),
  //   Color(0xFF),
  //   Color(0xFF)
  // ];
  // List<Color> colorMain = [Color(0xFFd669fe), Color(0xFF), Color(0xFF)];

  // Color outlineColor = Color(0xFF1a342d);
  // Color containarColor = Color(0xFFf5f0ec);
  // Color buttonColor = Color(0xFFdc9d00);

  // Color textColor = Color(0xFF1a342d);

  int increment = 0;
  bool iconButtonAdd = true;
  bool showDown = false;
  bool widgetEdite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.teal,
          ),
          child: Text(
            "Recount",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
            title: Text("Settings"),
            leading: Icon(
              Icons.settings,
              color: Colors.teal,
            ))
      ])),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(iconButtonAdd ? Icons.add : Icons.remove),
              onPressed: () {
                setState(() {
                  iconButtonAdd = !iconButtonAdd;
                });
              })
        ],
        title: Text(
          "Recount",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IncDecScreenOne(),

              // Section 2
              Text(
                "Button",
              )
            ],
          ),
        ),
      ),
    );
  }
}
