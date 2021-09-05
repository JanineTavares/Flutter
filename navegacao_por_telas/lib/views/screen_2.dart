import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Column(
        children: [
          Center(
            child: Text('Tela 1'),
          ),
          TextButton.icon(
            icon: Icon(Icons.arrow_back),
            label: Text('Voltar para home'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          
        ],
      ),
    );
  }
}
