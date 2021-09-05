import 'package:numero_aleatorio/model/model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter numero randomico',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter numero randomico'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int? _randomNumber;
  int? _maxNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Digite o valor máximo'
              ),
              onChanged: (number) {
                _maxNumber = int.tryParse(number);
              },
            ),
            Text('${_randomNumber ?? 'Número não gerado!'}'),
            TextButton(
                onPressed: () {
                  setState(() {
                    _randomNumber = Number.generateRandomNumber(maxNumber: _maxNumber ?? 100);
                    _showSnackBar('Número gerado com sucesso!', context);
                    _showSnackBar('$_randomNumber', context);
                  });
                },
                child: Text('Gerar número')
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

}
