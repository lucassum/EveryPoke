import 'package:EveryPoke/models/theme/theme.dart';
import 'package:EveryPoke/preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UniversalDrawerController extends GetxController {
  final xOffset = 0.0.obs;
  final yOffset = 0.0.obs;
  final scaleFactor = 1.0.obs;
  final isDrawerOpen = false.obs;
  final borderRadius = 0.0.obs;
  final RxString icon = 'images/pokeball.png'.obs;
  final Rx<Color> theme = mainColor.obs;
  bool dark = false;

  iconClick() {
    dark = !dark;
    if (dark) {
      icon.value = 'images/ultraball.png';
      theme.value = Colors.grey[800];
    } else {
      icon.value = 'images/pokeball.png';
      theme.value = mainColor;
    }
  }

  navigate(String route) {
    closeDrawer();
    Get.offAllNamed(route);
  }

  toggleDrawer() {
    isDrawerOpen.value ? closeDrawer() : openDrawer();
  }

  openDrawer() {
    xOffset.value = 165;
    yOffset.value = 90;
    scaleFactor.value = 0.8;
    borderRadius.value = 45;
    isDrawerOpen.value = true;
  }

  closeDrawer() {
    xOffset.value = 0;
    yOffset.value = 0;
    scaleFactor.value = 1;
    borderRadius.value = 0;
    isDrawerOpen.value = false;
  }
}
