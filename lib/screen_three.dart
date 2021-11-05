import 'package:flutter/material.dart';
import 'package:najib_project/home_page.dart';

class ScreenThree extends StatelessWidget {
  final String? name;
  final String? pass;
  const ScreenThree({this.name, this.pass});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Three"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Icon(Icons.navigate_next)),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.navigate_before)),
            SizedBox(
              height: 20,
            ),
            Text("$name"),
            Text("$pass")
          ],
        ),
      ),
    );
  }
}
