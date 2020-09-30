import 'package:EveryPoke/modulos/drawer/widgets/drawer_leading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomAppBar {
  static AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: LeadingDrawer(),
      elevation: 0,
      centerTitle: true,
      actions: [
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () => Get.toNamed('/pesquisar'))
      ],
      title: Text(
        'EveryPoke',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
