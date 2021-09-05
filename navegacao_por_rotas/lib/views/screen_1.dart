import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_por_telas/app/app.dart';
import 'package:navegacao_por_telas/app/app_routes.dart';


class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegando entre telas',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Screen1View(),
      onGenerateRoute: App().getAppRoutes().getRoutes,

    );
  }

}
class Screen1View extends StatefulWidget {
  const Screen1View({Key? key}) : super(key: key);

  @override
  _Screen1ViewState createState() => _Screen1ViewState();
}

class _Screen1ViewState extends State<Screen1View> {
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
              Navigator.pushReplacementNamed(context, AppRoutes.appRouteHome);
            },
          ),

        ],
      ),
    );
  }
}
