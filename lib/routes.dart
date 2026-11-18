import 'package:get/get.dart';
import 'package:pasflutter/pages/main_menu_page.dart';
import 'package:pasflutter/pages/login_page.dart';
import 'package:pasflutter/pages/list_makanan_page.dart';
import 'package:pasflutter/pages/detail_makanan_page.dart';

class Routes {

  static const String mainMenu = '/main-menu';
  static const String login = '/login';
  static const String listMakanan = '/list-makanan';
  static const String detailMakanan = '/detail-makanan';

static final pages = [
  GetPage(name: mainMenu,
     page: () => MainMenuPage()
     ),
     GetPage(
      name: listMakanan,
      page: () => ListMakananPage()
    ),
    GetPage(
      name: detailMakanan,
      page: () => DetailMakananPage(
        makanan: Get.arguments,
      )
    ),
  GetPage(name: login,
     page: () => LoginPage()
     ),
];

}

