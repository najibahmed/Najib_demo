import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.download),
                style: ElevatedButton.styleFrom(
                  // primary: Colors.pink,
                  elevation: 30,
                  // side: BorderSide(
                  //   color: Colors.blue,
                  //   width: 5,
                  //   style: BorderStyle.solid,
                  // ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 160,
              child: TextButton(
                onPressed: () {},
                child: Text("Text"),
                style: ElevatedButton.styleFrom(
                  // primary: Colors.yellow,
                  elevation: 30,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // shadowColor: Colors.green,
                  side: BorderSide(
                    color: Colors.pink,
                    width: 5,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: OutlinedButton(
                onPressed: () {},
                child: Icon(Icons.face),
                style: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.symmetric(horizontal: 15),
                  // primary: Colors.lightGreen,
                  elevation: 30,
                  // shadowColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  side: BorderSide(
                    color: Colors.blue,
                    width: 5,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Outline"),
                // child: Icon(Icons.nature),
                style: ElevatedButton.styleFrom(
                  // primary: Colors.pink,
                  elevation: 30,
                  side: BorderSide(
                    color: Colors.blue,
                    width: 5,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 170,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.facebook),
                label: Text("Facebook"),
                // child: Icon(Icons.nature),
                style: ElevatedButton.styleFrom(
                  // primary: Colors.pink,
                  elevation: 30,
                  // side: BorderSide(
                  //   color: Colors.orange,
                  //   width: 5,
                  //   style: BorderStyle.solid,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
