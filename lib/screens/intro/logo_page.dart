import 'dart:async';

import 'package:flutter/material.dart';

import 'manage_onboard.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ManageOnboard()));
    });

    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo.png",
                width: 95,
                height: 80,
              ),
              SizedBox(height: 35),
              Text(
                "UpTodo",
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
        Container(
          width: 136,
          height: 5,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ],
    ));
  }
}
