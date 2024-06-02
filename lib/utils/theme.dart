import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData basicTheme() => ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.white, fontSize: 40, fontWeight: FontWeight.w700),
      headline2: TextStyle(color: Colors.white, fontSize: 32),
    ),
    iconTheme: IconThemeData(
      size: 60,
      color: color,
    ));
