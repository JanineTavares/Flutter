import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  const Sobre({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sobre a dupla'),),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('images/janine.jpg'),
                Text('Janine Tavares', textAlign: TextAlign.center),
                Text('janine.h201@gmail.com', textAlign: TextAlign.center),
                Image.asset('images/rick.png'),
                Text('Henrique Macedo', textAlign: TextAlign.center),
                Text('macedohenriqueTI@gmail.com', textAlign: TextAlign.center),
                Image.asset('images/opiniao.jpg'),
                Text('O que achamos da disciplina:', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                Text('Durante a matéria tivemos muitas experiências novas e estamos gostando muito da matéria está um pouco difícil porém não seria uma matéria com o Cury kkkk', textAlign: TextAlign.center, style: TextStyle(fontSize: 23)),


              ]
          ),

        ],
      ),
    );
  }
}