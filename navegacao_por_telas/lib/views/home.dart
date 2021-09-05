import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_por_telas/views/views.dart';

class Home extends StatefulWidget {

  final String title;

  Home(this.title);

  // Home(this.title);

  @override
  _HomeState  createState() => _HomeState();

  }

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.title}'),),
      body: Column(
        children: [
          Center(
            child: Text('olá mundo'),
          ),
          TextButton.icon(
             icon: Icon(Icons.looks_one_rounded),
             label: Text('Tela 1'),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Screen1(name: 'janine tavares')));
             },
          ),
          TextButton.icon(
             icon: Icon(Icons.looks_two_rounded),
             label: Text('Tela 2'),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Screen2()));

             },
          ),
        ],
    ),
    );
  }
}

