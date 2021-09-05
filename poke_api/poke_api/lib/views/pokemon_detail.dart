import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_api/model/model.dart';


class PokemonDetail extends StatefulWidget {

  final Pokemon? pokemon;
  final int? id;


  PokemonDetail({Key? key, this.pokemon, this.id}) : super(key: key);

  @override
  _PokemonDetailState createState() => _PokemonDetailState();
}

class _PokemonDetailState extends State<PokemonDetail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('Detalhe do ${widget.pokemon!.name}'),),
        body: Column(
          children: [
            Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/${widget.id}.png'),
            Text('Detalhe do pokemon ${widget!.pokemon!.name!}'),
            Text('Url para ver mais infos ${widget!.pokemon!.url}'),

          ],
        ),
    );
  }
}
