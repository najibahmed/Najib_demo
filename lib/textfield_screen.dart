import 'package:flutter/material.dart';
import 'package:najib_project/screen_three.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  String password = '';
  bool isPasswordvisible = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  void initState() {
    super.initState();
    nameController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Clean up the focus node when the form is disposed.
    nameController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                autofocus: true,
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  // labelText: "This is lebel Text",
                  // errorText: "This is error text",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 3,
                          style: BorderStyle.solid)),
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: nameController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          // splashRadius: 20,
                          icon: Icon(Icons.close),
                          onPressed: () {
                            nameController.clear();
                          },
                        ),
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
              ),
              TextField(
                onChanged: (String value) {
                  setState(() {});
                },
                controller: passController,
                decoration: InputDecoration(
                  hintText: "Enter your Password",
                  // labelText: "This is lebel Text",
                  // errorText: "This is error text",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1)),
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 3,
                          style: BorderStyle.solid)),
                  prefixIcon: Icon(Icons.lock_outlined),
                  suffixIcon: passController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordvisible = !isPasswordvisible;
                            });
                          },
                          icon: isPasswordvisible
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
                obscureText: isPasswordvisible,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => ScreenThree(
                            name: nameController.text,
                            pass: passController.text));
                    Navigator.push(context, route);
                  },
                  child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
