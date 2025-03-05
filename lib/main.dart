import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:recount/home_page.dart';

// Flutter 3.24.3 Dart 3.5.3

void main() {
  runApp(const MyApp());
}

// ValueNotifier<bool> showBadge = ValueNotifier<bool>(false);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
