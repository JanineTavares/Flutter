import 'package:http/http.dart' as http;
import 'package:projeto_final/model/model.dart';
import 'dart:convert';

import 'package:projeto_final/views/constant.dart';

class CharacterService {

  Future<List<Character>?>? getCharacters() async {
    final url = Uri.https(Constant.baseUrl, Constant.endPoint);
    // final url = Uri.https(Constant.baseUrl, Constant.endPoint);
    print(url);
    final response = await http.Client().get(url);

    if (response.statusCode == 200) {
      print('${response.body.toString()}');

      List<dynamic> characters = json.decode(response.body);

      List<Character> listCharacters = characters.map((item) => Character.fromJson(item)).toList();

      return listCharacters;
    } else {
      return [];
    }
  }
}

