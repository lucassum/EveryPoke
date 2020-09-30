import 'package:EveryPoke/modulos/drawer/drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeadingDrawer extends GetWidget<UniversalDrawerController> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      onPressed: controller.toggleDrawer,
    );
  }
}
