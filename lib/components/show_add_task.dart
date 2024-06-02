import 'package:arams_to_do/components/category.dart';
import 'package:flutter/material.dart';

import 'calendar.dart';
import 'task_priority.dart';

void ShowDialog(BuildContext context) {
  String title = "";
  String description = "";

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Task"),
          content: Container(
            width: double.infinity,
            height: 100,
            child: Column(
              children: [
                Container(
                  width: 375,
                  height: 43,
                  child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Title",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(151, 151, 151, 1))),
                      )),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  width: 387,
                  height: 43,
                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Description",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(151, 151, 151, 1))),
                      )),
                ),
              ],
            ),
          ),
          actions: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        showCalendar(context);
                      },
                      child: Icon(
                        Icons.watch_later_outlined,
                        size: 24,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        ShowCategory(context);
                      },
                      child: Icon(
                        Icons.pin_drop_rounded,
                        size: 24,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showTaskPriority(context);
                      },
                      child: Icon(
                        Icons.flag,
                        size: 24,
                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.send,
                    size: 24,
                  )),
            ])
          ],
        );
      });
}
