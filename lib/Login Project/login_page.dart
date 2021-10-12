import 'package:flutter/material.dart';

import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 160,
                width: 160,
                child: Image.asset(
                  "assets/illustrator_login.jpeg.jfif",
                ),
              ),
              Text(
                "Welcome back!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Log in to your existant account of Q Alluro",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(.50),
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 58,
                width: 450,
                child: TextField(
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      // color: Colors.blue,
                    ),
                    hintText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 58,
                width: 450,
                child: TextField(
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  obscureText: true,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock
                        // color: Colors.blue,
                        ),
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 48,
                width: 260,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 2),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Or connect using",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(.50),
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 38,
                    width: 150,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.facebook),
                      label: Text("Facebook"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: Colors.blue[900],
                          elevation: 0),
                    ),
                  ),
                  SizedBox(width: 25),
                  SizedBox(
                    height: 38,
                    width: 150,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.whatshot),
                      label: Text("Whatshot"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: Colors.orange[900],
                          elevation: 0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(.65),
                      letterSpacing: 1,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
