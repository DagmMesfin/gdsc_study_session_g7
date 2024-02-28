import 'package:flutter/material.dart';
import 'package:ui_task_1/fourth_page.dart';
import 'package:ui_task_1/widgets/task_list.dart';

class TaskElement extends StatefulWidget {
  final String name, detail, date;

  const TaskElement(this.name, this.detail, this.date, {super.key});

  @override
  State<TaskElement> createState() => _TaskElementState();
}

class _TaskElementState extends State<TaskElement> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MyFourthPage(widget.name, widget.detail, widget.date);
          }));
        },
        splashColor: Colors.white54,
        child: SizedBox(
            width: 450,
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
                      widget.name[0],
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
                              Text(widget.name),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.date),
                            ],
                          ),
                        ])),
                SizedBox(
                  width: 30,
                  child: Center(
                      child: Container(
                    width: 5,
                    height: 35,
                    color: taskStatus["red"],
                  )),
                )
              ],
            )),
      ),
    );
  }
}
