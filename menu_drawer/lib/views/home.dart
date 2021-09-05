import 'package:flutter/material.dart';
import 'package:menu_drawer/menu/menu_drawer.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);


  final String title;



  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('DrawerMenu'),),
        drawer: MenuDrawer(),
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text('Nome: ${widget.title}'),
           )
        ],
      )
    );


    }
}
