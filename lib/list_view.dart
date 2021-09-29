import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listview extends StatelessWidget {
  // const Listview({Key? key}) : super(key: key);
  List contact = [
    "+8801789018103",
    "+8801770045583",
    "+8801764325919",
    "+8801716886610",
    "+8801687970122",
    "+8801670819177",
    "+8801720191748",
    "+8801622277155",
    "+8801758891019",
    "+8801777111124",
    "+8801760487590",
    "+8801983091400",
    "+8801777111192",
    "+8801711338657",
    "+8801676754515",
    "+8801670818990",
    "+8801710770365",
  ];
  List names = [
    "Israt Ara",
    "Yasmin Akter",
    "Samia Akter",
    "Abul Kalam",
    "Nabil Ahmed",
    "Ismat Ara",
    "Rahat ara",
    "Tafhimul Hasan",
    "Jamima Jui",
    "Sumaya Azad",
    "Nayun Ahmed",
    "Sadia Afrin",
    "Ashikul Islam Azad",
    "Masum Billah",
    "Rofiqul Islam Soyeb",
    "Jakia Farjana",
    "Maria Islam Boby",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Contacts",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          actions: [
            Icon(
              Icons.more_vert,
              size: 28,
            ),
          ]),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 1,
            height: 0,
            color: Colors.black.withOpacity(.15),
          );
        },
        padding: EdgeInsets.symmetric(horizontal: 5),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {},
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 28,
                color: Colors.white.withOpacity(.75),
              ),
            ),
            title: Text(names[index]),
            subtitle: Text(contact[index]),
            tileColor: Colors.white,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.edit),
                SizedBox(width: 10),
                Icon(Icons.delete),
              ],
            ),
          );
        },
      ),
    );
  }
}
