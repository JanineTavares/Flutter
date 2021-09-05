import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Olá'),),
      body: Column(
        children: [
          Text('olá')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _showSnackBar("olá, Snack", context);
          // _showToast('olá com Toast', context);
            _showAlert(
                message: 'Esse é um exemplo de alert com algumas opçoes',
                context: context,
                yesFunction: () {
                  print('funcionou');
                  Navigator.of(context).pop();
                },

                noFunction: () {
                  print('nao funcionou');
                  Navigator.of(context).pop();

                }
            );

        },
        child: Icon(Icons.message_outlined),
      ),


    );
  }
  void _showAlert({
        required String message,
        required BuildContext context,
        required Function yesFunction,
        required Function noFunction,
        IconData? icon = Icons.add,
        String? title = 'Atenção',
        String? yesButton = 'ok',
        String? noButton = 'cancelar' }) {

    AlertDialog alert = AlertDialog(
      title: Text(title!),
      content: Row(
        children: [
          Icon(icon),
          Expanded( //quebrar a linha
              child: Text(message)
          ),
          ]

      ),
      actions: [
        TextButton(
          onPressed: () {
            yesFunction();
            Navigator.of(context).pop();
          },
          child: Text(yesButton!),
        ),
        TextButton(
          onPressed: () => noFunction(),
          child: Text(noButton!),
        ),

      ],
    );
        showDialog(context: context, builder: (BuildContext context) {
          return alert;
        });
  }

  void _showSnackBar(String? message, BuildContext context) {
    print('oi');
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$message'))
    );
  }

  void _showToast(String? messageToast, BuildContext context) {
    Fluttertoast.showToast(
        msg: '$messageToast',
        toastLength: Toast.LENGTH_LONG,
        fontSize: 18.0,
        backgroundColor: Colors.blue,
        textColor: Colors.white);
  }
}
