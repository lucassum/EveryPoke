import 'package:EveryPoke/models/Pokemon/pokemon.dart';
import 'package:EveryPoke/modulos/drawer/widgets/drawer_leading.dart';
import 'package:EveryPoke/modulos/pokemon/pokemon_lista_controller.dart';
import 'package:EveryPoke/widgets/custom_appbar.dart';
import 'package:EveryPoke/widgets/stack_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PokemonListaTela extends GetView<PokeListController> {
  PokemonListaTela({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar.appBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: Obx(() => GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: controller.lista.length,
              itemBuilder: (context, index) => StackCard(
                    pokemon: controller.lista[index],
                    title: '#${controller.lista[index].id}',
                  ))),
        ));
  }
}
