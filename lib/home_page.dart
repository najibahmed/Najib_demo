import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Facebook",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: "arial",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      // body: Center(
      //   child: Icon(
      //     Icons.add_a_photo_outlined,
      //     size: 180,
      //     color: Colors.blue,
      //   ),
      // ),

      // body: Center(
      //   child: Text(
      //     "The quick brown fox jumps over  lazy dog.",
      //     style: TextStyle(
      //       fontFamily: "Lobster",
      //       fontSize: 28,
      //     ),
      //   ),
      // ),

      // body: Image.asset(
      //   "assets/happy_man.jpg",
      //   height: 250,
      //   width: 250,
      // ),

      body: Center(
        child: CircleAvatar(
          radius: 180,
          backgroundColor: Colors.blue,
          foregroundImage: AssetImage(
            "assets/happy_man.jpg",
          ),
        ),
      ),
    );
  }
}
