import 'package:flutter/material.dart';
import 'package:scaffold_e_tabbar/views/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Exemplo material app Tabbar',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey
        ),
        home: Home(),
    );
  }
}
