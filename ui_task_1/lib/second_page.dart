import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key, required this.title});

  final String title;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
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
            children: [Text(widget.title), Icon(Icons.more_vert)],
          ),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/images/2.png'),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Tasks List",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
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
                                        shape: BoxShape.circle,
                                        color: Colors.white38),
                                    child: const Center(
                                      child: Text(
                                        "U",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 280,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("UI/UX Design"),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("April. 29, 2023"),
                                              ],
                                            ),
                                          ])),
                                  SizedBox(
                                    width: 30,
                                    child: Center(
                                        child: Container(
                                      width: 5,
                                      height: 35,
                                      color: Colors.deepOrange,
                                    )),
                                  )
                                ],
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
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
                                        shape: BoxShape.circle,
                                        color: Colors.white38),
                                    child: const Center(
                                      child: Text(
                                        "U",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 280,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("UI/UX Design"),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("April. 29, 2023"),
                                              ],
                                            ),
                                          ])),
                                  SizedBox(
                                    width: 30,
                                    child: Center(
                                        child: Container(
                                      width: 5,
                                      height: 35,
                                      color: Colors.green,
                                    )),
                                  )
                                ],
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
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
                                        shape: BoxShape.circle,
                                        color: Colors.white38),
                                    child: const Center(
                                      child: Text(
                                        "V",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 280,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("View Candidates'"),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("April. 29, 2023"),
                                              ],
                                            ),
                                          ])),
                                  SizedBox(
                                    width: 30,
                                    child: Center(
                                        child: Container(
                                      width: 5,
                                      height: 35,
                                      color: Colors.orange,
                                    )),
                                  )
                                ],
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
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
                                        shape: BoxShape.circle,
                                        color: Colors.white38),
                                    child: const Center(
                                      child: Text(
                                        "F",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 280,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("Football Club"),
                                                const Text("Dribbling"),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("April. 29, 2023"),
                                              ],
                                            ),
                                          ])),
                                  SizedBox(
                                    width: 30,
                                    child: Center(
                                        child: Container(
                                      width: 5,
                                      height: 35,
                                      color: Colors.deepOrange,
                                    )),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/third');
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(1)),
                  overlayColor: MaterialStateProperty.all(Colors.deepOrange),

                  //elevation: MaterialStateProperty.all(10),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepOrangeAccent),
                  fixedSize: MaterialStateProperty.all(Size(250, 50)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)))),
              child: const Text(
                'Create Task',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(244, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
