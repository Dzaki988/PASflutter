import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  // list variable yang diperlukan
  final TextEditingController TxtController;
  final String myHint;

  const CustomTextField({
    super.key,
    required this.TxtController,
    required this.myHint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TxtController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: myHint,
      ),
    );
  }
}