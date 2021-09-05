import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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

  GlobalKey<FlipCardState> _cardKey = GlobalKey<FlipCardState>();


  _renderBackground() {
      return Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      );

  }

  _renderBack() {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      child: Center(
        child: Image.network('https://http2.mlstatic.com/D_NQ_NP_831596-MLB26742474685_012018-O.jpg'),
        ),
      );


  }
  _renderFront() {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text('Parte da frente', style: TextStyle(fontSize: 23.0, color: Colors.white)
        ),
      ),
    );

  }

  _renderCard(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 50.0, bottom: 100.0),
      color: Colors.white,
      child: FlipCard(
        key: _cardKey,
        flipOnTouch: false,
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print('$status');
        },
        front: _renderFront(),
        back: _renderBack(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          _renderBackground(),
          Column(
            children: [
              Expanded(
                  child: _renderCard(context))
            ],
          )
        ],
    ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'test',
        onPressed: () => _cardKey.currentState!.toggleCard(),
        child: Icon(Icons.add),
      ),

    );
  }
}
