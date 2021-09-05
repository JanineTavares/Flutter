import 'package:row_e_column/views/views.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo row e column',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Home'),
    );
  }
}
