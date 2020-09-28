import 'package:EveryPoke/modulos/drawer/drawer_tela.dart';
import 'package:EveryPoke/modulos/home/home_binding.dart';
import 'package:EveryPoke/modulos/home/home_tela.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static List<GetPage> pages = [
    GetPage(
        name: '/',
        page: () => DrawerTela(
              page: Home(),
            ),
        binding: HomeBinding()),
  ];
}
