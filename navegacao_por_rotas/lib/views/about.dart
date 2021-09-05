import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_por_telas/app/app.dart';
import 'package:navegacao_por_telas/app/app_routes.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegando entre telas',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AboutView(),
      onGenerateRoute: App().getAppRoutes().getRoutes,

    );
  }

}
class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Column(
        children: [
          Center(
            child: Text('About'),
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
