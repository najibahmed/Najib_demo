import 'package:flutter/material.dart';
import 'package:najib_project/bottomNavigation.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "",
      ),
      debugShowCheckedModeBanner: false,
      title: ("demo_project"),

      // home: Stackpage(),
      // home: Listview(),
      // home: Drawerpage(),
      // home: ScreenOne(),
      home: HomeScreen(),
    ),
  );
}
