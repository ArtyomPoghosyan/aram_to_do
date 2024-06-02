import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../components/auth_button.dart';
import '../../utils/finger_identify.dart';

class LoginForm extends StatefulWidget {
  final FirebaseAuth auth;

  final String? Function(String?) validateUsername;
  final String? Function(String?) validatePassword;

  LoginForm(
      {Key? key,
      required this.validatePassword,
      required this.validateUsername,
      required this.auth})
      : super(key: key);

  @override
  State<LoginForm> createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  final formField = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordControlller = TextEditingController();

  void _handleGoogleSignIn() {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      widget.auth.signInWithProvider(_googleAuthProvider);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 41, 24, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 53),
            Form(
              key: formField,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 327,
                    child: TextFormField(
                      controller: usernameController,
                      keyboardType: TextInputType.name,
                      validator: widget.validateUsername,
                      decoration: InputDecoration(
                        labelText: "Enter your Username",
                        border: OutlineInputBorder(),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                        errorMaxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text("Password", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Container(
                    width: 327,
                    child: TextFormField(
                      validator: widget.validatePassword,
                      controller: passwordControlller,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Enter your Password",
                        border: OutlineInputBorder(),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                        errorMaxLines: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 69),
                  Container(
                    width: 327,
                    height: 48,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(134, 135, 231, 0.5)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)))),
                      onPressed: () async {
                        if (formField.currentState!.validate()) {
                          Navigator.pushNamed(context, "/fingerprint");

                          bool auth = await FingerIdentify.authentication();
                          print("can authenticate: $auth");
                          if (auth) {
                            Navigator.pushNamed(context, "/initial");
                          }
                        }
                      },
                      child: Text("Login"),
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
                      Navigator.pushNamed(context, "/registration");
                    },
                    child:
                        Center(child: Text("Don’t have an account? Register")),
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
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
