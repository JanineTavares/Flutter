import 'package:flutter/material.dart';
import 'package:navegacao_por_telas/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegando entre telas',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home('Exemplo de navegação'),
    );
  }

}