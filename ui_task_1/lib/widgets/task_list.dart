import 'package:flutter/material.dart';

Map<String, Color> taskStatus = {
  "red": Colors.red,
  "green": Colors.green,
  "yellow": Colors.yellow,
};

Widget taskListItem(String initial, String date, String name, String color) {
  return Card(
    clipBehavior: Clip.hardEdge,
    child: InkWell(
      onTap: () {},
      splashColor: Colors.white54,
      child: SizedBox(
          width: 500,
          height: 70,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 75,
                width: 75,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white38),
                child: Center(
                  child: Text(
                    initial,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                  width: 280,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(name),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(date),
                          ],
                        ),
                      ])),
              SizedBox(
                width: 30,
                child: Center(
                    child: Container(
                  width: 5,
                  height: 35,
                  color: taskStatus[color],
                )),
              )
            ],
          )),
    ),
  );
}

Map<String, List<String>> allTasks = {
  "UX/Ui": ["Description", "8/3/10", 'red'],
  "Reading": ["Description", "8/3/10", 'red'],
  "Study": ["Description", "8/3/10", 'green'],
  "Dart": ["Description", "8/3/10", 'green'],
  "Dart2": ["Description", "8/3/10", 'green'],
};
