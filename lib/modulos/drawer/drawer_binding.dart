import 'package:EveryPoke/modulos/drawer/drawer_controller.dart';
import 'package:get/get.dart';

class DrawerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UniversalDrawerController(), permanent: true);
  }
}
