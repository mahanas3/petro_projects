import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petro_projects/model/class_audit.dart';
import '../model/class_file.dart';
import '../model/class_login.dart';
import '../routs/routnames.dart';
import '../services/api_services.dart';

class ApiController extends GetxController {
  LoginData? data;
  List<Files>? datas;
  List<Audit>? values;

  Future loginUser(String name, String password) async {
    try {
      data = await ApiServices().loginApi(name, password);
      if (data!.message == 'SUCCESS') {
        Get.toNamed(RouteName.homeRoute);
      } else {
        Get.snackbar('Error', data!.message!,
            backgroundColor: Colors.black.withOpacity(.4),
            colorText: Colors.white);
      }
    } catch (e) {
      print(e);
      Get.snackbar('Error', e.toString(),
          backgroundColor: Colors.black.withOpacity(.4),
          colorText: Colors.white);
    }
  }

  Future getData() async {
    try {
      datas = await ApiServices().getData(data!.id!.toString());
    } catch (e) {
      print(e);
      Get.snackbar('Error', e.toString(),
          backgroundColor: Colors.black.withOpacity(.4),
          colorText: Colors.white);
    }
  }
  Future getAuditGraph() async {
    try {
      List<Audit> values = await ApiServices().getGraph("id");
      return values;
    } catch (e) {
      print(e);
      Get.snackbar('Error', e.toString(),
          backgroundColor: Colors.black.withOpacity(.4),
          colorText: Colors.white);
    }}
}
