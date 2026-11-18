
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pasflutter/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'My Learning App',

      initialRoute: Routes.login,

      getPages: Routes.pages,

      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
    );
  }
}
