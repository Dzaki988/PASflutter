import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasflutter/component/custom_TextField.dart';

import 'package:pasflutter/Controller/login_controller.dart';
import 'package:pasflutter/component/custom_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Deklarasi TextEditingController di dalam StatelessWidget
  final LoginController controller =
      Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView( // Membungkus dengan ScrollView agar aman dari overflow saat keyboard muncul
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: CustomTextField(
                  TxtController: controller.txtUsername,
                  myHint: "input username",
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: CustomTextField(
                  TxtController: controller.txtPassword,
                  myHint: "input password",
                ),
              ),
              const SizedBox(height: 20),
              Obx(() {

                return CustomButton(
                  text: controller.isLoading.value
                      ? 'Loading...'
                      : 'Login',

                  isActive: !controller.isLoading.value,

                  onPressed: () {
                    controller.login();
                  },
                );

              }),
            ],
          ),
        ),
      ),
    );
  }
}