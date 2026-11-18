import 'package:flutter/material.dart';
import 'package:pasflutter/controller/home_makanan_controller.dart';
import 'package:pasflutter/pages/detail_makanan_page.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homeMakananController = Get.put(HomeMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeMakananController.ListMakanan.length,
              itemBuilder: (context, index) {
                
                final makanan = homeMakananController.ListMakanan[index];

                return InkWell(
                  onTap: () {
                    Get.to(() => DetailMakananPage(makanan: makanan));
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      width: 280,
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          makanan.namaMakanan,
                          style: TextStyle(fontSize: 40),
                        ),
                        subtitle: Text(
                          "Rp. " + makanan.hargaMakanan,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}