import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.controller,
    this.text,this.icon,Key? key}) : super(key: key);
  String? text;
  IconData? icon;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          fillColor: Colors.indigo.withOpacity(.2),
          filled: true,
          hintText: text??'',
          prefixIcon: Icon(icon,color: Colors.indigo.withOpacity(.5),),
          enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo))
      ),
    );
  }
}