import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    final List<String> entries = <String>['a', 'b', 'c'];
    final List<int> colorCodes = <int>[400, 500, 100];
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:ListView.builder(
      padding: const EdgeInsets.all(0.8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 500,
            color: Colors.red[colorCodes[index]],
            child: Text(entries[index]),
          );
      }),
      );
  }
}







  //LISTVIEW SIMPLES SEM BUILDER
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     body: ListView(
  //       children: [
  //         Container(
  //           width: double.infinity,
  //           height: 500,
  //           color: Colors.green,
  //         ),
  //         Container(
  //           width: double.infinity,
  //           height: 500,
  //           color: Colors.blueAccent,
  //         ),
  //         Container(
  //           width: double.infinity,
  //           height: 500,
  //           color: Colors.grey,
  //         ),
  //       ],
  //     ),
  //   );
  // }
