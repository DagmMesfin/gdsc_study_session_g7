import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> profile = [
    {
      "name": "Clara Pettingriw",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "img": "assets/images/pp1.jpg",
    },
    {
      "name": "Aura Jones",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "img": "assets/images/pp2.jpg",
    },
    {
      "name": "Mary Smith",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "img": "assets/images/pp3.jpg",
    },
    {
      "name": "Pitt Sheldon",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "img": "assets/images/pp4.jpg",
    },
    {
      "name": "Carlos Agulianos",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "img": "assets/images/pp5.jpg",
    },
    {
      "name": "Tasha Kurchov",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "img": "assets/images/pp6.jpg",
    },
    {
      "name": "Jeniffer Moles",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "img": "assets/images/pp7.jpg",
    },
    {
      "name": "Veronica Helder",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "img": "assets/images/pp8.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.menu_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Results")
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.more_vert_rounded)
                    ],
                  ),
                )
              ],
            ),
          )),
      body: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: ListView.builder(
            itemCount: profile.length,
            itemBuilder: (context, index) {
              final profileItem = profile[index];
              return Card(
                clipBehavior: Clip.hardEdge,
                shadowColor: const Color.fromARGB(115, 79, 79, 79),
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(profileItem["img"]),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 350,
                        height: 100,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  profileItem["name"],
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Wrap(
                              children: [
                                Text(
                                  profileItem["description"],
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black54,
                                  ),
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
