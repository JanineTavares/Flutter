import 'package:flutter/material.dart';
import 'package:poke_api/model/model.dart';
import 'package:poke_api/service/pokemon_service.dart';
import 'package:poke_api/views/pokemon_detail.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Pokemon?>? _pokemonList;
  bool _progress = false;

  _rowIcon() {
    return const Icon(Icons.android, size: 100);
  }

  _rowProgress() {
    return _progress ? const CircularProgressIndicator() : Container();

}

  _title(Pokemon pokemon) {
    return Text('${pokemon.name.toString()}');
  }

  _subtitle(Pokemon pokemon) {
    return Text('${pokemon.url.toString()}');
  }


  _rowListPokemon() {
    if(_pokemonList == null) {
      return const Text('Sem pokemon', style: TextStyle(fontSize: 28.8));
    }
    return ListView.builder(
        itemCount: _pokemonList!.length,
      itemBuilder: (context, index) {
          print('Qtd de pokemons: ${_pokemonList!.length}');
          final pokemon = _pokemonList![index];
          return Card(
            color: Colors.green,
            child: ListTile(
              title: _title(pokemon!),
              subtitle: _subtitle(pokemon),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/${index+1}.png'),
              ),

              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => PokemonDetail(pokemon: pokemon, id: index+1))
                );
              },
            ),
          );

      }
    );
  }

  _body(BuildContext context) {
    return Column(
      children: [
        _rowIcon(),
        Container(
          height: 400,
          child: _rowListPokemon() ,
        ),
        _rowProgress(),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _body(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _fetchPokemon(context);
    },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _fetchPokemon(BuildContext context) async {
    final pokemonService = PokemonService();

    setState(() {
      _progress = true;
    });

    _sendSnackBar(context, 'Aguarde, baixando pokemons');


    _pokemonList = await pokemonService.fetchPokemons();

    setState(() {
      _progress = false;
    });
  }


  _sendSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message)));
  }
}
