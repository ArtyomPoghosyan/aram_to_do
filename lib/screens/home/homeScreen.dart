import 'package:flutter/material.dart';

import '../../widget/drawerWidget.dart';

class HomeScreen extends StatefulWidget {
  final user;
  const HomeScreen({super.key, required this.user});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 22, 24, 0),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Icon(
                              Icons.list_outlined,
                              size: 24,
                            ),
                          ),
                          Text("Index"),
                          ClipOval(
                            child: Container(
                              width: 42,
                              height: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                widget.user.photoURL,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 90),
                    Container(
                      width: 227,
                      height: 227,
                      child: Image.asset("images/checklist.png"),
                    ),
                    SizedBox(height: 40),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "What do you want to do today?",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Tap + to add your tasks",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: DrawerWidget(user: widget.user),
    );
  }
}
