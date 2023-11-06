import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  TextEditingController controller =TextEditingController();
  String labelName;
  String hintText;
  HomeTextField({super.key, required this.controller, required this.labelName,required this.hintText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 1,
      cursorColor: Colors.white54,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        fillColor: Colors.green,
        filled: true,
        labelText: labelName,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
        hintStyle: const TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
        labelStyle: const TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
