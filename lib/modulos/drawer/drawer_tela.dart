import 'package:EveryPoke/modulos/drawer/drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerTela extends GetView<UniversalDrawerController> {
  DrawerTela({Key key, @required this.page}) : super(key: key);
  final GetView page;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.deepOrange[800],
      ),
      Obx(() => AnimatedContainer(
            transform: Matrix4.translationValues(
                controller.xOffset.value, controller.yOffset.value, 0)
              ..scale(controller.scaleFactor.value),
            duration: Duration(milliseconds: 250),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(controller.clip.value),
              child: page,
            ),
          )),
    ]);
  }
}
