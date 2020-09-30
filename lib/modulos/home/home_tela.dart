import 'package:EveryPoke/modulos/drawer/drawer_controller.dart';
import 'package:EveryPoke/widgets/custom_appbar.dart';
import 'package:EveryPoke/widgets/stack_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:EveryPoke/modulos/drawer/widgets/drawer_leading.dart';
import 'package:EveryPoke/modulos/home/home_controller.dart';

class HomeTela extends GetView<HomeController> {
  HomeTela({
    Key key,
  }) : super(key: key);

  final UniversalDrawerController drawerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.appBar(),
      body: Container(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 150,
                  child: Row(children: [
                    Expanded(
                        child: StackCard(
                      image: Image.asset(
                        'images/pikachu.png',
                      ),
                      title: 'Pokémon',
                      fontSize: 25,
                      strokeWidth: 0.75,
                      action: () => drawerController.navigate('/pokemons'),
                    )),
                    Expanded(child: Container())
                  ])))),
    );
  }
}
