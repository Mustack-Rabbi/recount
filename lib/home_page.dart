import 'package:flutter/material.dart';

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

  List<Color> colorLevel1 = [Color(0xFFF2CEFF), Color(0xFF), Color(0xFF)];
  List<Color> colorLevel2 = [Color(0xFFE295FE), Color(0xFF), Color(0xFF)];
  List<Color> colorLevel3 = [Color(0xFFCB40FC), Color(0xFF), Color(0xFF)];
  List<Color> colorLevel4 = [Color(0xFFBB15F6), Color(0xFF), Color(0xFF)];
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(color: colorLevel3[0]),
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
                                color: colorLevel1[0],
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
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                      color: colorLevel4[0],
                                    )),
                                Text(increment.toString(),
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(.6),
                                    )),
                                if (iconButtonAdd == true)
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          increment++;
                                        });
                                      },
                                      icon: Icon(Icons.add,
                                          color: colorLevel4[0])),
                              ],
                            )
                          ]),
                    ),
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
                              color: colorLevel4[0]),
                        ),
                      )
                  ]),
                  if (showDown == true)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorLevel1[0],
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
                                              icon: Icon(
                                                  Icons.arrow_back_ios_rounded,
                                                  color: colorLevel4[0])),
                                          Text(
                                            "1/3",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black
                                                    .withOpacity(.6),
                                                fontWeight: FontWeight.w600),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: colorLevel4[0],
                                              )),
                                        ],
                                      )
                                    : Center(
                                        child: Text(
                                        "Change Widget",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color:
                                                Colors.black.withOpacity(.6)),
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
                                      color: colorLevel4[0],
                                    ))
                                : IconButton(
                                    onPressed: () {
                                      setState(() {
                                        widgetEdite = !widgetEdite;
                                      });
                                    },
                                    icon: Icon(Icons.done,
                                        color: colorLevel4[0])),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    showDown = !showDown;
                                  });
                                },
                                icon: Icon(Icons.arrow_drop_up,
                                    color: colorLevel4[0])),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),

            // Section 2
            Text(
              "Button",
            )
          ],
        ),
      ),
    );
  }
}
