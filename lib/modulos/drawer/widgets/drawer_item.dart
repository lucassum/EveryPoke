import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:EveryPoke/modulos/drawer/drawer_controller.dart';

class DrawerItem extends GetWidget<UniversalDrawerController> {
  final IconData icon;
  final String text;
  final String goTo;
  DrawerItem({
    @required this.icon,
    @required this.text,
    @required this.goTo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            '$text',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      onTap: () => controller.navigate('$goTo'),
    );
  }
}
