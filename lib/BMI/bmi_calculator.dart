import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi calculator".toUpperCase()),
        centerTitle: true,
        actions: [Icon(Icons.dark_mode)],
      ),
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 10,
                shadowColor: Colors.red,
                child: Container(
                  height: 160,
                  width: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Age(In Year)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "18",
                        style: TextStyle(
                          fontSize: 78,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.75),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipOval(
                            child: Material(
                              color: Colors.grey.withOpacity(.30),
                              child: InkWell(
                                onTap: () {},
                                splashColor: Colors.purple.withOpacity(.75),
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Icon(
                                    Icons.remove,
                                    size: 32,
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Material(
                              color: Colors.grey.withOpacity(.30),
                              child: InkWell(
                                onTap: () {},
                                splashColor: Colors.purple.withOpacity(.75),
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Icon(
                                    Icons.add,
                                    size: 32,
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                shadowColor: Colors.red,
                child: Container(
                  height: 160,
                  width: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Weight(In Kg)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "50",
                        style: TextStyle(
                          fontSize: 78,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.75),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipOval(
                            child: Material(
                              color: Colors.grey.withOpacity(.30),
                              child: InkWell(
                                onTap: () {},
                                splashColor: Colors.purple.withOpacity(.75),
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Icon(
                                    Icons.remove,
                                    size: 32,
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Material(
                              color: Colors.grey.withOpacity(.30),
                              child: InkWell(
                                onTap: () {},
                                splashColor: Colors.purple.withOpacity(.75),
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Icon(
                                    Icons.add,
                                    size: 32,
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.red,
            child: Container(
              height: 170,
              width: 450,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 36,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.purple.withOpacity(0.35),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("cm"),
                              Switch(
                                value: true,
                                onChanged: (bool x) {},
                                activeTrackColor: Colors.purple[300],
                                activeColor: Colors.purple[700],
                              ),
                              Text("ft")
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.30),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(.75)),
                                ),
                                Icon(Icons.arrow_downward)
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.30),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "8\"",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(.75)),
                                ),
                                Icon(Icons.arrow_downward)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.red,
            child: Container(
              height: 100,
              width: 450,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.75)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "I'm",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Switch(
                          value: true,
                          onChanged: (bool x) {},
                          activeTrackColor: Colors.purple[300],
                          activeColor: Colors.purple[700],
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Calculate".toUpperCase(),
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.50)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                elevation: 10,
                shadowColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
