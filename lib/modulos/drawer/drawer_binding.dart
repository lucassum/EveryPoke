import 'package:EveryPoke/modulos/drawer/drawer_controller.dart';
import 'package:EveryPoke/modulos/pokemon/pokemon_lista_controller.dart';
import 'package:get/get.dart';

class DrawerBinding implements Bindings {
  @override
  void dependencies() async {
    Get.put(UniversalDrawerController(), permanent: true);
    PokeListController controller =
        Get.put(PokeListController(), permanent: true);
    await controller.load();
  }
}
