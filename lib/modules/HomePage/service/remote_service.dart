// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../AppComponents/endpoints.dart';
import 'package:http/http.dart' as http;

import '../../../AppComponents/static_components.dart';
import '../model/member_model_home.dart';

class RemoteServices {
  static var client = http.Client();

  //POST API call for Fetch Members
  static Future fetchMembers(BuildContext context) async {
    var url = Uri.parse(Endpoints.baseUrl + Endpoints.memberLisitng);
    print(url);

    try {
      var response = await client.post(url, body: {
        "mobile": UserCredentials.phoneController.text,
      }, headers: {
        "Accept": "Application/json",
        "Connection": "Keep-Alive",
        'Authorization': 'Bearer ${UserCredentials.token}'
      });
      print(response.statusCode.toString());
      var jsonString = jsonDecode(response.body);
      print(response.statusCode);
      print(jsonString);
      if (response.statusCode == 200) {
        if (jsonString['data'] != null) {
          // Get.toNamed(AddDevices.routeName);
        } else if (jsonString["code"] == 402) {
          print(jsonString['message'].toString());
        } else if (jsonString["code"] == 402) {
          print(jsonString['message'].toString());
        } else {
          const snackBar = SnackBar(content: Text("Error Occured"));
          return ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }

        return MemberList.fromJson(jsonDecode(response.body));
      } else {
        const snackBar = SnackBar(content: Text("API not responding"));
        return ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } on SocketException catch (e) {
      print(e);
    } on PlatformException catch (e) {
      print(e);
    } on TimeoutException {
      const snackBar = SnackBar(content: Text("API not responding"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
