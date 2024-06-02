import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final user;
  const DrawerWidget({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Text("Profile"),
          Text("nkar"),
          Text("Anun"),
          Container(
            child: Row(children: [
              ElevatedButton(onPressed: () {}, child: Text("Left")),
              ElevatedButton(onPressed: () {}, child: Text("done")),
            ]),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Settings"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      size: 24,
                    ),
                    title: Text("App Settings"),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Account"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 24,
                    ),
                    title: Text("Change account name"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 24,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      size: 24,
                      color: Colors.red,
                    ),
                    title: Text("Log out"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
