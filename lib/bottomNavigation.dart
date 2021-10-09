import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List screens = [
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.purple,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.yellow,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.pink,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.teal,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        centerTitle: true,
      ),
      extendBody: true,
      body: screens.elementAt(selectedIndex),
      // bottomNavigationBar: BottomNavigationBar(

      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //       label: "Notifications",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: "Profile",
      //     ),
      //   ],
      //   selectedFontSize: 22,
      //   unselectedFontSize: 18,
      //   unselectedItemColor: Colors.green,
      //   selectedItemColor: Colors.red,
      //   iconSize: 32,
      //   currentIndex: selectedIndex,
      //   // showUnselectedLabels: false,
      //   // unselectedLabelStyle: TextStyle(),
      //   onTap: (int index) {
      //     setState(() {
      //       selectedIndex = index;
      //     }
      //     );
      //   },

      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.grey,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        color: Colors.blue,
        elevation: 0,
        // child: Container(
        //   height: 60,
        //   child: Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: Row(
        //       // mainAxisSize: MainAxisSize.min,
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: <Widget>[
        //         Column(
        //           children: [
        //             IconButton(
        //               icon: Icon(Icons.menu),
        //               color: Colors.black,
        //               onPressed: () {},
        //             ),
        //             Text(
        //               "Menu",
        //               style: TextStyle(
        //                 fontSize: 12,
        //                 color: Colors.grey,
        //               ),
        //             ),
        //           ],
        //         ),
        //         IconButton(
        //           icon: Icon(Icons.settings),
        //           color: Colors.black,
        //           onPressed: () {},
        //         ),
        //         SizedBox(width: 10),
        //         IconButton(
        //           icon: Icon(Icons.menu),
        //           color: Colors.black,
        //           onPressed: () {},
        //         ),
        //         IconButton(
        //           icon: Icon(Icons.settings),
        //           color: Colors.black,
        //           onPressed: () {},
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],

          backgroundColor: Theme.of(context).primaryColor.withAlpha(0),
          elevation: 0,
          selectedFontSize: 22,
          unselectedFontSize: 18,
          unselectedItemColor: Colors.black.withOpacity(.50),
          selectedItemColor: Colors.black,
          iconSize: 22,
          currentIndex: selectedIndex,
          // showUnselectedLabels: false,
          // unselectedLabelStyle: TextStyle(),
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
