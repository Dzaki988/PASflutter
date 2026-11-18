import 'package:flutter/material.dart';
import 'package:pasflutter/component/profile/custom_profile_item.dart';
import 'package:pasflutter/component/profile/custom_profile_photo.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color(0xFF0B1014),
      appBar: AppBar(
        title: Text("Profile"),
        foregroundColor: Colors.white,
        // centerTitle: true,
        backgroundColor: Color.fromARGB(255, 13, 7, 7),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(child: CustomProfilePhoto(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEmOvseTveJxXjN7vH9SJMJwCy_52AXG_1G90YNy3ayw&s=10")),
            SizedBox(height: 40),
            CustomProfileItem(icon: Icons.person_outline, title: "Name", value: "Muhammad Dzaki Abdurrohman"),
            CustomProfileItem(icon: Icons.info_outline, title: "About", value: "Kelas 11 PPLG 1 Absen 24"),
            CustomProfileItem(icon: Icons.phone_outlined, title: "Phone", value: "0895637397855"),
            CustomProfileItem(icon: Icons.link, title: "Link", value: "-"),
          ],
        ),
      ),
    );
  }
}