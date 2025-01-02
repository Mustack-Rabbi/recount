import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mintGreen = Color(0xFF97dbaf);
  Color lightLime = Color(0xFFc2e6ae);
  Color pastelYellow = Color(0xFFf3e1a7);
  Color blushPink = Color(0xFFf4bbba);

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
              color: mintGreen,
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    // color: Colors.red.withOpacity(.6),
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Increment & Decrement"),
                        IconButton(
                            onPressed: () {
                              showAdaptiveDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Settings"),
                                      actions: [
                                        Row(
                                          children: [
                                            Icon(Icons.remove),
                                            Text("Add Icon"),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    iconButtonAdd =
                                                        !iconButtonAdd;
                                                  });
                                                },
                                                icon: Icon(Icons.done))
                                          ],
                                        ),
                                        Icon(Icons.add),
                                        Icon(Icons.add),
                                        Icon(Icons.add),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("Close")),
                                      ],
                                    );
                                  });
                            },
                            icon: Icon(Icons.more_vert))
                      ],
                    ),
                  ),
                  Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightLime,
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
                                    icon: Icon(Icons.remove)),
                                Text(increment.toString()),
                                if (iconButtonAdd == true)
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          increment++;
                                        });
                                      },
                                      icon: Icon(Icons.add))
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
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                      )
                  ]),
                  if (showDown == true)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightLime,
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
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.arrow_back)),
                                          Text("1/3"),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.arrow_forward)),
                                        ],
                                      )
                                    : Center(child: Text("Change Widget"))),
                            (widgetEdite == false)
                                ? IconButton(
                                    onPressed: () {
                                      setState(() {
                                        widgetEdite = !widgetEdite;
                                      });
                                    },
                                    icon: Icon(Icons.widgets))
                                : IconButton(
                                    onPressed: () {
                                      setState(() {
                                        widgetEdite = !widgetEdite;
                                      });
                                    },
                                    icon: Icon(Icons.done)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    showDown = !showDown;
                                  });
                                },
                                icon: Icon(Icons.arrow_drop_up)),
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
