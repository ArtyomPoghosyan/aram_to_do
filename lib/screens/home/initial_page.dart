import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../widget/bottom_nav_bar.dart';

typedef boolCallback = bool Function(bool);

class InitialHomePage extends StatefulWidget {
  final user;
  final auth;
  dynamic setShowAppBar;
  bool showAppBar;
  InitialHomePage(
      {Key? key,
      required this.auth,
      required this.setShowAppBar,
      required this.showAppBar,
      required this.user})
      : super(key: key);

  @override
  State<InitialHomePage> createState() => _InitialHomePage();
}

class _InitialHomePage extends State<InitialHomePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   widget.setShowAppBar(false);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //     // TextButton(
      //     //     onPressed: () {
      //     //       widget.auth.signOut();
      //     //     },
      //     //     child: Text("Sign out")),
      bottomNavigationBar: Expanded(
        flex: 1,
        child: BottomNaviationBar(user: widget.user),
      ),
    );
  }
}
