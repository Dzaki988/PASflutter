import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/menu/feat.dart';
import 'package:pasflutter/menu/home.dart';
import 'package:pasflutter/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listpages = [HomePage(),FeatPage(), ProfilPage()];
}
