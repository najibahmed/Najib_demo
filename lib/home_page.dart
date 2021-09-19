import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Personal Information",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: "Lobster",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        color: Colors.indigo,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // circuler image profile picture
            CircleAvatar(
              radius: 60,
              foregroundImage: AssetImage("assets/happy_man.jpg"),
            ),
            const SizedBox(height: 20),
            // text with name
            Container(
              child: Text(
                "Najib Ahmed",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Lobster",
                  fontSize: 32,
                  letterSpacing: 5.0,
                ),
              ),
            ),
            // text with developer
            Container(
              child: Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Playball",
                  fontSize: 32,
                  letterSpacing: 5.0,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // bar between objects
            Container(
              width: 200,
              height: 1,
              color: Colors.white,
            ),
            const SizedBox(height: 30),
            // for phone number container
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Icon(
                  Icons.call,
                  size: 20,
                  color: Colors.black,
                ),
                const SizedBox(width: 20),
                Text(
                  "+8801717696902",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    letterSpacing: 3.0,
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 20),
            // for emain adress
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Icon(
                  Icons.mail,
                  size: 20,
                  color: Colors.black,
                ),
                const SizedBox(width: 20),
                Text(
                  "najibahmed50@gmail.com",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    letterSpacing: 3.0,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
