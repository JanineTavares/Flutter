import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_por_telas/app/app_routes.dart';

class App extends StatelessWidget {
  static final App _instance = App._internal();

  App._internal();


  factory App() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: getAppRoutes().getRoutes,
    );
  }

  AppRoutes getAppRoutes() {
    return AppRoutes();
  }
}