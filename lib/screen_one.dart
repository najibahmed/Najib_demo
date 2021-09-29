import 'package:flutter/material.dart';
import 'package:najib_project/screeen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenTwo()));
            },
            child: Icon(Icons.navigate_next)),
      ),
    );
  }
}
