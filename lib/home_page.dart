import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    IconButton(onPressed: () {}, icon: Icon(Icons.settings))
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                          Text("0"),
                          IconButton(onPressed: () {}, icon: Icon(Icons.remove))
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
