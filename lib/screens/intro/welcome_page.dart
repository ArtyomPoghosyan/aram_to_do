import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 58, 24, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 25),
                Text(
                  "Welcome to UpTodo",
                  style: Theme.of(context).textTheme.headline2,
                ),
                Padding(
                  // padding: EdgeInsets.symmetric(vertical: 25),
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                  child: Text(
                    "Please login to your account or create a new account to continue",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 390),
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(327, 48)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(136, 117, 255, 1),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text("LOGIN"),
                      ),
                      SizedBox(height: 28),
                      ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(327, 48)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent,
                          ),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(
                              color: Color.fromRGBO(142, 124, 255, 1),
                              width: 2,
                            ),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/registration");
                        },
                        child: Text("CREATE ACCOUNT"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 136,
                        height: 5,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
