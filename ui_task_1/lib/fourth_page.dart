import 'package:flutter/material.dart';

class MyFourthPage extends StatefulWidget {
  const MyFourthPage({super.key, required this.title});

  final String title;

  @override
  State<MyFourthPage> createState() => _MyFourthPageState();
}

class _MyFourthPageState extends State<MyFourthPage> {
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
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/3.png'),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
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
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "UI/UX Design",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200),
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
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                  alignment: Alignment.topLeft,
                                  child: const Text(
                                    "First i have to animate the logo and later prototyping my design. It's very important.",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200),
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
                                  child: const Text(
                                    "April. 29, 2023",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
