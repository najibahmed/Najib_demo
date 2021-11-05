import 'package:flutter/material.dart';
import 'package:najib_project/home_page.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);
  _showAlertDialog(BuildContext context) {
    return showDialog(
        // barrierColor: Colors.purple,
        barrierDismissible: false,
        barrierLabel: "This is barrier lable",
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("THis is the title"),
            backgroundColor: Colors.blue[300],
            content: Text("This is the body for the Alert Dialog"),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text("Yes"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Counter Screen"), centerTitle: true, actions: [
        PopupMenuButton(
            onSelected: (index) {
              if (index == 1) {
                Route route = MaterialPageRoute(builder: (ctx) => HomePage());
                Navigator.push(context, route);
              } else if (index == 2) {
                print("This is item 2");
              } else if (index == 3) {
                print("This is item 3");
              } else if (index == 4) {
                print("This is item 4");
              }
            },
            icon: Icon(Icons.more_vert),
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.pink, width: 2),
            ),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Item 1"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Item 2"),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("Item 3"),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Text("Item 4"),
                  value: 4,
                ),
              ];
            })
      ]),
      body: null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAlertDialog(context);
        },
        child: Icon(Icons.add, size: 48),
        elevation: 20,
        backgroundColor: Colors.blue,
        tooltip: "Click here",
        focusColor: Colors.purple[900],
        hoverColor: Colors.purple[200],
        splashColor: Colors.red,
      ),
    );
  }
}
