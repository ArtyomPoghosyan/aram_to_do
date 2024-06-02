import 'package:arams_to_do/screens/intro/manage_onboard.dart';
import 'package:arams_to_do/screens/login_register/finger_print_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/home/category_screen.dart';
import 'screens/home/initial_page.dart';
import 'screens/intro/create_onboard.dart';
import 'screens/intro/logo_page.dart';
import 'screens/intro/orgonaize_onboard.dart';
import 'screens/intro/welcome_page.dart';
import 'screens/login_register/login_page.dart';
import 'screens/login_register/registration_page.dart';
import 'utils/validators.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (builder) => Logo());
      case "/manage":
        return MaterialPageRoute(builder: (builder) => ManageOnboard());
      case "/create":
        return MaterialPageRoute(builder: (builder) => CreateOnboard());
      case "/organize":
        return MaterialPageRoute(builder: (builder) => OrgonizeOnboard());
      case "/welcome":
        return MaterialPageRoute(builder: (builder) => WelcomePage());
      case "/login":
        return MaterialPageRoute(
            builder: (builder) => Login(
                  validateUsername: validateUsername,
                  validatePassword: validatePassword,
                ));
      case "/registration":
        return MaterialPageRoute(builder: (builder) => Registration());
      case "/fingerprint":
        return MaterialPageRoute(builder: (builder) => FingerPrint());
      case "/initial":
        return MaterialPageRoute(
            builder: (builder) => InitialHomePage(
                  user: String,
                  setShowAppBar: bool,
                  showAppBar: false,
                  auth: Firebase,
                ));
      case "/category":
        return MaterialPageRoute(builder: (builder) => CategoryScreen());

      default:
        return ErrorRoute();
    }
  }
}

Route<dynamic> ErrorRoute() {
  return MaterialPageRoute(builder: (builder) {
    return Scaffold(
      body: Center(child: Text("Error Page")),
    );
  });
}
