import 'package:flutter/material.dart';
import 'package:najib_project/list_view.dart';

class Drawerpage extends StatelessWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Listview()));
              },
              child: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios)),
          ],
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Stack layer start here
              Stack(
                children: [
                  Image.asset("assets/gmail_background.jfif"),
                  // Above the backeground layer start here with  top left positioned
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 48,
                          backgroundImage: AssetImage("assets/happy_man.jpg"),
                        ),
                        Text(
                          "Najib Ahmed",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "najibahmed50@gmail.com",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(.50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // two circular avater top right Positioned above the background image
                  Positioned(
                    top: 10,
                    right: 15,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundImage: AssetImage("assets/happy_man.jpg"),
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          radius: 14,
                          backgroundImage: AssetImage("assets/happy_man.jpg"),
                        ),
                      ],
                    ),
                  ),
                  // icone with bottom right positioned above the background image
                  Positioned(
                    right: 15,
                    bottom: 5,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white.withOpacity(.50),
                      size: 30,
                    ),
                  ),
                ],
              ),
              // Stack ends here and column layer the listTile starts here
              ListTile(
                onTap: () {},
                leading: Icon(Icons.circle),
                title: Text("Short title"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.circle),
                title: Text("A little longer title"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.circle),
                title: Text("A very long title that trancat the list"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.circle),
                title: Text("A Shorter title"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.circle),
                title: Text("Short title"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.circle),
                title: Text("A Shorter title"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.feedback_outlined),
                title: Text("Feedback"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.logout_rounded),
                title: Text("Log Out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
