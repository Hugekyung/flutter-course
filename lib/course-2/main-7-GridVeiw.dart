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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // * 가로줄 수
          crossAxisSpacing: 15.0, // * 줄 사이의 간격(열 방향 간격)
          mainAxisSpacing: 12.0, // * 행 사이의 간격(행 방향 간격)
        ),
        children: [
          postContainer(number: "1", colorData: Colors.red),
          postContainer(number: "2", colorData: Colors.teal),
          postContainer(number: "3", colorData: Colors.yellow),
          postContainer(number: "4", colorData: Colors.green),
        ],
      ),
    );
  }

  Container postContainer(
      {String number = "0", Color colorData = Colors.amber}) {
    return Container(
      height: 200,
      color: colorData,
      child: Center(
        child: Text("Box $number"),
      ),
    );
  }
}
