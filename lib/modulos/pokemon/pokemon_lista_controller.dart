import 'dart:developer';

import 'package:EveryPoke/models/Pokemon/pokemon.dart';
import 'package:EveryPoke/models/poke_list/poke_list.dart';
import 'package:EveryPoke/models/poke_list/poke_list_item.dart';
import 'package:EveryPoke/pokeapi/api.dart';
import 'package:get/get.dart';

class PokeListController extends GetxController {
  RxList<Pokemon> lista = RxList();

  load() async {
    for (var i = 1; i <= 893; i++) {
      lista.add(await PokeApi.obterPokemonPorId(i));
    }
  }
}
