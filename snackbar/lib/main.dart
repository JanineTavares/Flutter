import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enviando mensagens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Enviando mensagens'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enviando mensagens'),),
      body: Column(
        children: [
          Center(child: Text('Olá...'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Snackbar
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text('Olá SnackBar :-)')
              )
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
