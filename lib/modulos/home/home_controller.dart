import 'package:EveryPoke/models/Pokemon/pokemon.dart';
import 'package:EveryPoke/pokeapi/api.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Future<Pokemon> obterPokemonById(int id) async {
    return await PokeApi.obterPokemonPorId(id);
  }
}
