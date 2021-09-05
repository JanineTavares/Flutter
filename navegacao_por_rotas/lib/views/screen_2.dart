import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_por_telas/app/app.dart';
import 'package:navegacao_por_telas/app/app_routes.dart';


class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegando entre telas',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Screen2View(),
      onGenerateRoute: App().getAppRoutes().getRoutes,

    );
  }

}
class Screen2View extends StatefulWidget {
  const Screen2View({Key? key}) : super(key: key);

  @override
  _Screen2ViewState createState() => _Screen2ViewState();
}

class _Screen2ViewState extends State<Screen2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Column(
        children: [
          Center(
            child: Text('Tela 2'),
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
