import 'package:flutter/material.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({super.key});

  @override
  State<AddTasks> createState() => _AddTasks();
}

class _AddTasks extends State<AddTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Add-task")],
      ),
    );
  }
}
