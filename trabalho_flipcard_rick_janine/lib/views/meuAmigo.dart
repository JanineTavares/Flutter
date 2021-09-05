

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class MeuAmigo extends StatefulWidget {

  final String? name;


  const MeuAmigo({Key? key, this.name}) : super(key: key);

  @override
  _MeuAmigoState createState() => _MeuAmigoState();
}

class _MeuAmigoState extends State<MeuAmigo> {
  _renderBackground() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple,

      ),
    );
  }

  _renderBack() {
    return Container(
      decoration:BoxDecoration(
        color: Colors.deepPurple,
        // borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: Container(
      child: Image.asset('images/back.png'),

      ),
    );
  }

  _renderFront() {
    return Container(
      decoration:BoxDecoration(
        color: Colors.deepPurple,
        // borderRadius: BorderRadius.all(Radius.circular(50)),
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
      appBar: AppBar(title: Text('Meu amigo'),),
      backgroundColor: Colors.grey[500],
      body: Stack(
        fit:  StackFit.expand,
        children: [
        _renderBackground(),
    Column(
    children: [
    Expanded(
    child: _renderCard(context),
    )
    ]
    )
    ]
      )
    );

  }
}
