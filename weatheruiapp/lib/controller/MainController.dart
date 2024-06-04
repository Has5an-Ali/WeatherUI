import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Maincontroller extends GetxController {
  var IsDark = false.obs;

  chnageTheme() {
    IsDark.value = !IsDark.value;

    Get.changeThemeMode(IsDark.value ? ThemeMode.dark : ThemeMode.light);
  }
}
