import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../components/auth_button.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _Registration();
}

class _Registration extends State<Registration> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final formField = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();

  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  void _handleGoogleSignIn() {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuthProvider);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 18, 24, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Register",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 23),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 327,
                      height: 48,
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Enter your Username",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text("Password", style: TextStyle(fontSize: 16)),
                    SizedBox(height: 5),
                    Container(
                      width: 327,
                      height: 48,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Enter your Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text("Confirm Password", style: TextStyle(fontSize: 16)),
                    SizedBox(height: 5),
                    Container(
                      width: 327,
                      height: 48,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Enter your Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 327,
                      height: 48,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(134, 135, 231, 0.5)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)))),
                        onPressed: () {},
                        child: Text("Register"),
                      ),
                    ),
                    SizedBox(height: 31),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 199, 199, 1)),
                          width: 154,
                          height: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                          child: Text(" or "),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(151, 151, 151, 1),
                          ),
                          width: 154,
                          height: 2,
                        ),
                      ],
                    ),
                    SizedBox(height: 29),
                    AuthButton(
                        onPressed: _handleGoogleSignIn,
                        googleIimagePath: "images/google.png",
                        googleText: "Login with Google",
                        appleImagePath: "images/apple.png",
                        appleText: "Login with Apple"),
                    SizedBox(height: 46),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child:
                          Center(child: Text("Already have an account? Login")),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 136,
                          height: 5,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        )));
  }
}
