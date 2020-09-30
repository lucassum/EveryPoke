import 'dart:convert';
import 'dart:developer';

import 'package:EveryPoke/models/Pokemon/pokemon.dart';
import 'package:EveryPoke/models/poke_list/poke_list.dart';
import 'package:EveryPoke/models/poke_list/poke_list_item.dart';
import 'package:http/http.dart' as http;

class PokeApi {
  static Future<Pokemon> obterPokemonPorId(int id) async {
    var url = 'https://pokeapi.co/api/v2/pokemon/$id/';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return Pokemon.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
