

import 'package:flutter/material.dart';
import 'package:trabalho_flipcard_rick_janine/views/views.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalhin com Flutterzin',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Cartão com FlipCard'),
    );
  }
}