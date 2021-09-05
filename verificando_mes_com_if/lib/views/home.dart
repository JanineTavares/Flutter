import 'package:verificando_mes_com_if/model/model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Month? _month;

  @override
  void initState() {
    super.initState();
    _month = Month();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text('${_month?.month ?? 'Mês não informado'}'),
          Text('${_month?.checkMonth() ?? 'Mês não informado'}'),
          TextField(
            decoration: InputDecoration(
                hintText: 'Digite um numero de 1 a 12'
            ),
            onChanged: (text) {
              setState(() {
                _month?.month = int.tryParse(text);
              });
            },
          ),
          // TextButton(
          //   onPressed: () {
          //     setState(() {
          //       _month?.month = 10;
          //     });
          //   },
          //   child: Text('Ver mês'),
          // )
        ],
      ),
    );
  }
}