// ignore_for_file: avoid_print, unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:g_tracker/AppComponents/endpoints.dart';
import 'package:g_tracker/GlobalModel/circle_model.dart';
import 'package:http/http.dart' as http;

import '../AppComponents/static_components.dart';

class CircleService {
  static var client = http.Client();

  static Future getCircleList(
    BuildContext context,
    String userId,
  ) async {
    var url = Uri.parse(Endpoints.baseUrl + Endpoints.getCircleList);
    var body = {"user_id": userId};
    var headers = {
      "Accept": "Application/json",
      'Authorization': 'Bearer ${UserCredentials.token}'
    };
    try {
      var response = await client.post(url, body: body, headers: headers);
      var jsonString = jsonDecode(response.body);
      print(response.statusCode);
      print(jsonString);
      if (response.statusCode == 200) {
        if (jsonString["code"] == 200) {
          print("Circle List");
        } else {
          final snackBar = SnackBar(content: Text("${jsonString["message"]}"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      } else if (response.statusCode == 404) {
        const snackBar = SnackBar(content: Text("Circle is not found."));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        const snackBar = SnackBar(content: Text("Something went wrong"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      var cirlceList = CircleList.fromJson(jsonString);
      print("Circle $cirlceList");
      return cirlceList;
    } catch (e) {
      print(e);
      final snackBar = SnackBar(content: Text("$e"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  static Future getCircleList2(
    String userId,
  ) async {
    var url = Uri.parse(Endpoints.baseUrl + Endpoints.getCircleList);
    var body = {"user_id": userId};
    var headers = {
      "Accept": "Application/json",
      'Authorization': 'Bearer ${UserCredentials.token}'
    };
    try {
      var response = await client.post(url, body: body, headers: headers);
      var jsonString = jsonDecode(response.body);
      print(response.statusCode);
      print(jsonString);
      if (response.statusCode == 200) {
        if (jsonString["code"] == 200) {
          print("Circle List");
        } else {
          // final snackBar = SnackBar(content: Text("${jsonString["message"]}"));
          // ScaffoldMessenger.of).showSnackBar(snackBar);
        }
      } else if (response.statusCode == 404) {
        const snackBar = SnackBar(content: Text("Circle is not found."));
        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        const snackBar = SnackBar(content: Text("Something went wrong"));
        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      var cirlceList = CircleList.fromJson(jsonString);
      print("Circle $cirlceList");
      return cirlceList;
    } catch (e) {
      print(e);
      final snackBar = SnackBar(content: Text("$e"));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
