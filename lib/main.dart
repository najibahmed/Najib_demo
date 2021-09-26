import 'package:flutter/material.dart';

import 'list_view.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(
          fontFamily: "",
        ),
        debugShowCheckedModeBanner: false,
        title: ("demo_project"),

        // home: Stackpage(),
        home: Listview()),
  );
}
