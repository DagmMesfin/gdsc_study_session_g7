import 'package:flutter/material.dart';
import 'package:ui_task_1/widgets/task_list.dart';

Map<String, List<String>> allTasks = {
  "UX/Ui": ["8/3/10", "Description", 'red'],
  "Reading": ["8/3/10", "Description", 'green'],
  "Volleyball": ["8/3/10", "Description", 'yellow'],
  "Mobile Dev": ["8/3/10", "Description", 'yellow'],
};

class TaskElement extends StatefulWidget {
  final String name, detail, date, color;

  const TaskElement(this.name, this.detail, this.date, this.color, {super.key});

  @override
  State<TaskElement> createState() => _TaskElementState();
}

class _TaskElementState extends State<TaskElement> {
  @override
  Widget build(BuildContext context) {
    return taskListItem(widget.name[0], widget.date, widget.name, widget.color);
  }
}

class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    List<Widget> eachTask = [];
    var height = MediaQuery.of(context).size.height;
    allTasks.forEach((key, value) {
      Widget one = TaskElement(key, value[1], value[0], value[2]);
      eachTask.add(one);
      eachTask.add(
        SizedBox(
          height: height * 0.02,
        ),
      );
    });
    return ListView(
      padding: const EdgeInsets.all(8),
      children: eachTask,
    );
  }
}
