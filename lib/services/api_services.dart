import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:petro_projects/model/class_audit.dart';
import '../model/class_file.dart';
import '../model/class_login.dart';
import '../utilities/network_failure.dart';

class ApiServices {
  Future<LoginData> loginApi(String name, String password) async {
    final response = await http.post(
        Uri.parse(
            'https://www.petroinfotech.com/PetroHSE/api/Admin/ValidateLogin'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'userName': name,
          'password': password,
          "authType": "FORMS",
          "ipAddress": ""
        }));
    if (response.statusCode == 200) {
      var decodeData = jsonDecode(response.body);
      LoginData data = LoginData.fromJson(decodeData);
      return data;
    } else {
      NetworkFailures.errorHandling(response.statusCode);
      throw 'error';
    }
  }

  Future<List<Files>> getData(String id) async {
    final response = await http.get(Uri.parse(
        'https://www.petroinfotech.com/PetroHSE/api/Dashboard/GetHomePage?companyCode=1&userId=$id'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> decodeData = json.decode(response.body);
      var datas = decodeData["dtAbstract"].map<Files>((data) {
        return Files.fromJson(data);
      }).toList();
      return datas;
    } else {
      throw 'Error';
    }
  }

  Future<List<Audit>> getGraph(String id) async {
    final response = await http.get(Uri.parse(
        'https://www.petroinfotech.com/PetroHSE/api/Audit/GetDashboardAuditList?UserCompany Code=1&loggedInUserID=610'));
    if (response.statusCode == 200) {
      print(response);
      var decodedData = json.decode(response.body);
      List<Audit> value =
          decodedData.map((data) => Audit.fromJson(data)).toList();
      return value;
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
