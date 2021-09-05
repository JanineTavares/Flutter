import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_flipcard_rick_janine/views/views.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  _renderBackground() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

  _renderBack() {
    return Container(
      decoration:BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Image.asset('images/back.png'),
    );
  }

  _renderFront() {
    return Container(
      decoration:BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Image.asset('images/front.png'),
    );
  }

  _renderCard(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 50.0, bottom: 100.0),
      color: Colors.white,
      child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          speed: 1000,
          onFlipDone: (status){
            print('status $status');
          },
          front: _renderFront(),
          back: _renderBack()
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text('Meu Amigo'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MeuAmigo()));
              },
            ),
            ElevatedButton(
              child: Text('Sobre'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Sobre()));
              },
            ),
          ],
        ),
      ),
    );
  }
}