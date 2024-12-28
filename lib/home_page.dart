import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int increment = 0;
  bool iconButtonAdd = true;

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
            // Section 1
            // Text(
            //   "Number Count",
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     fontSize: 20,
            //     color: Colors.teal,
            //   ),
            //   textAlign: TextAlign.start,
            // ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red.withOpacity(.5),
              ),
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 8),
              width: double.infinity,
              child: Column(children: [
                Row(
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
                                                iconButtonAdd = !iconButtonAdd;
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
                        icon: Icon(Icons.settings))
                  ],
                ),
                Expanded(
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
                      ),
                    ],
                  ),
                )
              ]),
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
