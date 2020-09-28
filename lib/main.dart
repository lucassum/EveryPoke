import 'package:EveryPoke/modulos/drawer/drawer_binding.dart';
import 'package:EveryPoke/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    initialRoute: '/',
    initialBinding: DrawerBinding(),
    getPages: AppPages.pages,
  ));
}
