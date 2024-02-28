import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/images/splashscreen.png'),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
                  overlayColor: MaterialStateProperty.all(Colors.blueAccent),
                  elevation: MaterialStateProperty.all(20),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  fixedSize: MaterialStateProperty.all(Size(350, 65)),
                  shape: MaterialStateProperty.all(
                      const LinearBorder(side: BorderSide.none))),
              child: const Text(
                'Get Started!',
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
