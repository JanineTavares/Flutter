import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {

  final String? name;


  const Screen1({Key? key, this.name}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Column(
        children: [
          Center(
            child: Text('Tela 1'),
          ),
          Text('nome enviado: ${widget.name}'),
          TextButton.icon(
            icon: Icon(Icons.arrow_back),
            label: Text('Voltar para thome'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}
