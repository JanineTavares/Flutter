import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
   AboutState createState() =>  AboutState();
}

class  AboutState extends State <About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: Text('Sobre'),),
      body: Column(
        children: [
          Text('Sobre'),
          TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.keyboard_return),
              label: Text('Voltar'))
        ],
      ),
    );
  }
}
