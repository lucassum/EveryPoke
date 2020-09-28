import 'package:get/get.dart';

class UniversalDrawerController extends GetxController {
  final xOffset = 0.0.obs;
  final yOffset = 0.0.obs;
  final scaleFactor = 1.0.obs;
  final isDrawerOpen = false.obs;
  final clip = 0.0.obs;

  toggleDrawer() {
    isDrawerOpen.value ? closeDrawer() : openDrawer();
  }

  openDrawer() {
    xOffset.value = 230;
    yOffset.value = 115;
    scaleFactor.value = 0.6;
    clip.value = 45;
    isDrawerOpen.value = true;
  }

  closeDrawer() {
    xOffset.value = 0;
    yOffset.value = 0;
    scaleFactor.value = 1;
    clip.value = 0;
    isDrawerOpen.value = false;
  }
}
