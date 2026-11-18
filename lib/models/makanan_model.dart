class MakananModel {
  String namaMakanan;
  String hargaMakanan;
  String imageUrl;
  String deskripsiMakanan;

  // ini konstuktor
  // agar nanti bisa langsung diisikan ketika membuat object
  MakananModel({
    required this.namaMakanan,
    required this.hargaMakanan,
    required this.imageUrl,
    required this.deskripsiMakanan,
  });
}