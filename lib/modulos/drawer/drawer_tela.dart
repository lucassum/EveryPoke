import 'package:EveryPoke/modulos/drawer/drawer_controller.dart';
import 'package:EveryPoke/modulos/drawer/widgets/drawer_item.dart';
import 'package:EveryPoke/preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerTela extends GetView<UniversalDrawerController> {
  DrawerTela({Key key, @required this.page}) : super(key: key);
  final StatelessWidget page;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Obx(() => Scaffold(
            backgroundColor: controller.theme.value,
            appBar: AppBar(
              centerTitle: true,
              title: Container(
                width: 50,
                height: 50,
                child: FittedBox(
                  child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => controller.iconClick(),
                      child: Image.asset('${controller.icon}')),
                  fit: BoxFit.fill,
                ),
              ),
              backgroundColor: controller.theme.value,
              elevation: 0,
            ),
            body: Container(
              width: Get.width / 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    DrawerItem(icon: Icons.home, text: 'Início', goTo: '/'),
                    DrawerItem(
                        icon: Icons.search, text: 'Pokémon', goTo: '/pokemons')
                  ],
                ),
              ),
            ),
          )),
      Obx(() => AnimatedContainer(
            transform: Matrix4.translationValues(
                controller.xOffset.value, controller.yOffset.value, 0)
              ..scale(controller.scaleFactor.value),
            duration: Duration(milliseconds: 200),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(controller.borderRadius.value),
              child: Material(
                elevation: 6,
                child: InkWell(
                    child: page,
                    onTap: controller.isDrawerOpen.value
                        ? controller.closeDrawer
                        : null),
              ),
            ),
          )),
    ]);
  }
}
