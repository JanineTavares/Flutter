import 'dart:async';
import 'dart:convert';
import 'package:poke_api/model/model.dart';
import 'package:poke_api/views/constant.dart';
import 'package:http/http.dart' as http;

abstract class AbstractPokemonService {

  Future<List<Pokemon>?>? fetchPokemons();

}

class PokemonService extends AbstractPokemonService {
  @override
  Future<List<Pokemon>?>? fetchPokemons() async {

    final url = Uri.https('${Constant.base_url}', '${Constant.base_url_version}${Constant.end_point}');

    final response = await http.Client().get(url);

    if(response.statusCode != 200) {
      print('n rolou');
      return [];
    }
    print('response => ${response.body.toString()}');

    return parsedJson(response.body);

  }

  List<Pokemon> parsedJson(final response) {

    final jsonDecoded = json.decode(response);

    List<dynamic> pokemons = jsonDecoded['results'];

      return pokemons.map((element) => Pokemon.fromJson(element)).toList();


  }


}