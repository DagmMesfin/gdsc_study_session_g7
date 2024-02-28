import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_task_1/widgets/model.dart';
import 'package:ui_task_1/widgets/provider.dart';

class MyFourthPage extends StatefulWidget {
  final String name, description, duedate;
  const MyFourthPage(this.name, this.description, this.duedate, {super.key});

  @override
  State<MyFourthPage> createState() => _MyFourthPageState();
}

class _MyFourthPageState extends State<MyFourthPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _taskName = TextEditingController();
  final _taskDescription = TextEditingController();

  DateTime selected = DateTime.now();
  Future<void> _selected(BuildContext context) async {
    await showDatePicker(
            context: context,
            firstDate: DateTime.now(),
            lastDate: DateTime(2040))
        .then((value) {
      setState(() {
        selected = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    TodoList oldList =
        TodoList(widget.name, widget.duedate, widget.description);
    _taskName.text = widget.name;
    _taskDescription.text = widget.description;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.orange,
            iconSize: 25,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.white,
          title: Center(
              child: Container(
            padding: EdgeInsets.fromLTRB(120, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Task Details"), Icon(Icons.more_vert)],
            ),
          )),
        ),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
                child: Center(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/3.png', width: 200, height: 300),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Title",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                splashColor: Colors.white60,
                                child: SizedBox(
                                    width: 500,
                                    height: 65,
                                    child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        alignment: Alignment.centerLeft,
                                        child: TextFormField(
                                          controller: _taskName,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Task Name"),
                                          validator: (String? value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Please Enter Task Name";
                                            }
                                            return null;
                                          },
                                        ))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                splashColor: Colors.white60,
                                child: SizedBox(
                                    width: 500,
                                    height: 170,
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 10, 0, 0),
                                      alignment: Alignment.topLeft,
                                      child: TextFormField(
                                        controller: _taskDescription,
                                        decoration: const InputDecoration(
                                          hintText: "First",
                                          border: InputBorder.none,
                                        ),
                                        validator: (String? value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please Enter Description";
                                          }
                                          return null;
                                        },
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Deadline",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                splashColor: Colors.white60,
                                child: SizedBox(
                                    width: 500,
                                    height: 65,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              '${selected.day}-${selected.month}-${selected.year}'),
                                          IconButton(
                                              onPressed: () =>
                                                  _selected(context),
                                              icon: Icon(
                                                Icons.calendar_month_outlined,
                                                color: Colors.red.shade300,
                                              ))
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        Provider.of<TodoListProvider>(context,
                                                listen: false)
                                            .updateToDoModel(
                                                oldList,
                                                TodoList(
                                                    _taskName.text.trim(),
                                                    '${selected.day}/${selected.month}/${selected.year}',
                                                    _taskDescription.text
                                                        .trim()));
                                        Navigator.of(context)
                                            .pushReplacementNamed('/second');
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          backgroundColor: Colors.black38,
                                          content: Text(
                                            '${_taskName.text} was updated successfully',
                                            style:
                                                const TextStyle(fontSize: 20),
                                          ),
                                          duration: const Duration(
                                              milliseconds: 3000),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          behavior: SnackBarBehavior.floating,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ));
                                      }
                                    },
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            const EdgeInsets.all(1)),
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.deepOrange),

                                        //elevation: MaterialStateProperty.all(10),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.deepOrangeAccent),
                                        fixedSize: MaterialStateProperty.all(
                                            Size(125, 45)),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.0)))),
                                    child: const Text(
                                      'Update Task',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              244, 255, 255, 255)),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Provider.of<TodoListProvider>(context,
                                              listen: false)
                                          .removeToDoModel(oldList);
                                      Navigator.of(context)
                                          .pushReplacementNamed('/second');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        backgroundColor: Colors.black38,
                                        content: Text(
                                          '${_taskName.text} was deleted successfully',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        duration:
                                            const Duration(milliseconds: 3000),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ));
                                    },
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            const EdgeInsets.all(1)),
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.deepOrange),

                                        //elevation: MaterialStateProperty.all(10),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.deepOrangeAccent),
                                        fixedSize: MaterialStateProperty.all(
                                            Size(125, 45)),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.0)))),
                                    child: const Text(
                                      'Delete Task',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              244, 255, 255, 255)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))));
  }
}
