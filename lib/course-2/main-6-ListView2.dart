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
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var postList = [
    {"title": "Title 1", "colorData": Colors.yellow},
    {"title": "Title 2", "colorData": Colors.green},
    {"title": "Title 3", "colorData": Colors.black},
    {"title": "Title 4", "colorData": Colors.orange},
    {"title": "Title 5", "colorData": Colors.red},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext context, int index) {
          return postContainer(
            title: postList[index]["title"] as String,
            colorData: postList[index]["colorData"] as Color,
          );
        },
      ),
    );
  }

  Widget postContainer({String title = '', Color colorData = Colors.blue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: colorData,
        )
      ],
    );
  }
}
