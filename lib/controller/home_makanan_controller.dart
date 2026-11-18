import 'package:pasflutter/models/makanan_model.dart';
import 'package:get/get.dart';

class HomeMakananController extends GetxController {
  // kita buat data datanya
  RxList<MakananModel> ListMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial",
      hargaMakanan: "25.000",
      imageUrl: "https://osccdn.medcom.id/images/content/2020/03/21/a697d71d1ae5c89f9fb51f64d2c6b35a.jpg",
      deskripsiMakanan: "Nasi goreng bumbu rempah dengan telur mata sapi,ayam suwir, dan kerupuk",

    ),
    MakananModel(
      namaMakanan: "Ayam Bakar Madu",
      hargaMakanan: "30.000",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH2L8RYSxk2aMf-L7VLglfbJU6fjS48xq2Ci03VChYenif0smiT9VSzp4&s=10",
      deskripsiMakanan: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      hargaMakanan: "28.000",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIty8pLW_zNKFsa0bD9UPmdO93-y8VERegeWgyawdABFZGlHS5aVX28ZG8&s=10",
      deskripsiMakanan: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",

    ),
    MakananModel(
      namaMakanan: "Mie Ayam Bakso",
      hargaMakanan: "20.000",
      imageUrl: "https://media.suara.com/pictures/653x366/2023/01/08/50456-ilustrasi-dodol-garut-freepikikarahma.jpg",
      deskripsiMakanan: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",

    ),
    MakananModel(
      namaMakanan: "Es Teh Manis Jumbo",
      hargaMakanan: "8.000",
      imageUrl: "https://assets.promediateknologi.id/crop/0x0:0x0/1200x0/webp/photo/2023/01/28/2527671038.jpg",
      deskripsiMakanan: "Minuman teh melati segar dengan gula asli dan es batu kristal.",

    ),
    // dll
  ].obs;
}
