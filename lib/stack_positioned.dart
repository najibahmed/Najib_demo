import 'package:flutter/material.dart';

class Stackpage extends StatelessWidget {
  const Stackpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.topRight,
          children: [
            //   Container(
            //     height: 100,
            //     width: 100,
            //     decoration: BoxDecoration(color: Colors.red, boxShadow: [
            //       BoxShadow(
            //         color: Colors.black,
            //         blurRadius: 20.0,
            //         offset: Offset(10, 10),
            //         spreadRadius: 2.0,
            //       )
            //     ]),
            //   ),
            //   Container(
            //     height: 90,
            //     width: 90,
            //     color: Colors.green,
            //   ),
            //   Positioned(
            //     bottom: 0,
            //     left: 0,
            //     child: Container(
            //       height: 60,
            //       width: 60,
            //       color: Colors.blue,
            //     ),
            //   ),
            ListTile(
              tileColor: Colors.blue,
              leading: Icon(
                Icons.mobile_friendly,
                size: 30,
                color: Colors.orange,
              ),
              title: Text(
                "Mobile Phone",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text("Smart Phones above 20k in Bangladesh"),
              isThreeLine: true,
              dense: true,
              trailing: Icon(Icons.more_vert),
            )
          ]),
    );
  }
}
