import 'package:EveryPoke/modulos/drawer/drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView {
  Home({
    Key key,
  }) : super(key: key);
  final UniversalDrawerController drawerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: drawerController.toggleDrawer,
        ),
      ),
      body: Container(),
    );
  }
}
