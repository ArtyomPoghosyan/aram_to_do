import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../components/auth_button.dart';
import '../../utils/finger_identify.dart';
import '../../utils/validators.dart';
import '../home/initial_page.dart';
import 'login_form.dart';

class Login extends StatefulWidget {
  final String? Function(String?) validateUsername;
  final String? Function(String?) validatePassword;
  const Login(
      {Key? key,
      required this.validatePassword,
      required this.validateUsername});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final formField = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordControlller = TextEditingController();
  bool showAppBar = true;
  User? _user;

  void setShowAppBar(bool val) {
    setState(() {
      // if (showAppBar) {
      //   showAppBar = false;
      // } else {
      //   showAppBar = true;
      // }
      showAppBar = false;
      showAppBar = val;
      print('${showAppBar} parent');
    });
  }

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

  void _handleLogin() async {
    print(usernameController.text);
    try {
      Navigator.pushNamed(context, "/fingerprint");

      UserCredential _userCredential = await _auth.signInWithEmailAndPassword(
          email: usernameController.text, password: passwordControlller.text);
      if (_userCredential.user != null) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(_userCredential.user!.uid)
            .set({
          'email': _userCredential.user!.email,
        });
        print('User signed in: ${_userCredential.user!.uid}');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('${showAppBar} widget');
    return Scaffold(
      appBar: !showAppBar
          ? AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          : null,
      body: SafeArea(
        child: _user != null
            ? InitialHomePage(
                auth: _auth,
                setShowAppBar: setShowAppBar,
                showAppBar: showAppBar,
                user: _user)
            : LoginForm(
                auth: _auth,
                validateUsername: validateUsername,
                validatePassword: validatePassword),
      ),
    );
  }
}
