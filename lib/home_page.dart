import 'package:flutter/material.dart';
import 'screen/increment_decrement/inc_dec_screen.dart';
import 'screen/tap_inc_dec/tap_inc_dec.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mintGreen = const Color(0xFF97dbaf);
  Color appColor = Colors.teal;
  Color lightLime = const Color(0xFFc2e6ae);
  Color pastelYellow = const Color(0xFFf3e1a7);
  Color blushPink = const Color(0xFFf4bbba);

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
          child: ListView(children: const [
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
        title: const Text(
          "Recount",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IncDecScreen(),
              SizedBox(
                height: 20,
              ),
              TapIncDec(),
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
