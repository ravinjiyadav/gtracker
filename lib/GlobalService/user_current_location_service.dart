// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:g_tracker/AppComponents/endpoints.dart';
import 'package:http/http.dart' as http;

import '../AppComponents/static_components.dart';

class UserCurrentLocationService {
  static var client = http.Client();

  static Future getUsersCurrentLocation(
      var userID,
      String location,
      String latitude,
      String longitude,
      String date,
      String time,
      String meridiem,
      String deviceType) async {
    var url = Uri.parse(Endpoints.baseUrl + Endpoints.addUserCurrentLocation);
    print(url);
    var body = {
      "user_id": userID,
      "location": location,
      "lat": latitude,
      "lng": longitude,
      "date": date,
      "time": time,
      "meridiem": meridiem,
      "device_type": deviceType,
    };
    var headers = {
      "Accept": "Application/json",
      'Authorization': 'Bearer ${UserCredentials.token}'
    };
    try {
      var response = await client.post(url, body: body, headers: headers);
      var jsonString = jsonDecode(response.body);
      if (response.statusCode == 200) {
        if (jsonString['code'] == 200) {
          print(jsonString);
        } else {
          print("${jsonString['message']}");
        }
      } else {
        print("Something Went Wrong");
      }
    } catch (e) {
      print(e);
    }
  }
}
