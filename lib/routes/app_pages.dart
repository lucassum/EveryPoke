import 'package:EveryPoke/modulos/drawer/drawer_tela.dart';
import 'package:EveryPoke/modulos/home/home_binding.dart';
import 'package:EveryPoke/modulos/home/home_tela.dart';
import 'package:EveryPoke/modulos/pokemon/pokemon_lista_binding.dart';
import 'package:EveryPoke/modulos/pokemon/pokemon_lista_tela.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static List<GetPage> pages = [
    GetPage(
        name: '/',
        page: () => DrawerTela(
              page: HomeTela(),
            ),
        binding: HomeBinding()),
    GetPage(
      name: '/pesquisar',
      page: () => PesquisarTela(),
    ),
    GetPage(
        name: '/pokemons',
        page: () => DrawerTela(
              page: PokemonListaTela(),
            ),
        binding: PokemonListaBinding())
  ];
}

class PesquisarTela extends StatelessWidget {
  const PesquisarTela({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
