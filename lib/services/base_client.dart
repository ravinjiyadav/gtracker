// ignore_for_file: avoid_print, dead_code

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:g_tracker/services/app_exceptions.dart';
import 'package:http/http.dart' as http;

class BaseClient {

  //GET
  Future<dynamic> get(String baseUrl, String api) async {
    var uri = Uri.parse(baseUrl + api);
    try {
      var response = await http.get(uri).timeout(const Duration(seconds: 20));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataExceptions('No Internet Connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingExceptions(
          'API not responded in time', uri.toString());
    }
  }

  //POST
  Future<dynamic> post(String baseUrl, String api, dynamic payloadObj,
      [dynamic headers]) async {
    var uri = Uri.parse(baseUrl + api);

    print(uri);
    try {
      var response = await http.post(uri, body: payloadObj, headers: headers);
      print(response.body);

      return _processResponse(response);
    } on SocketException {
      throw FetchDataExceptions('No Internet Connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingExceptions(
          'API not responded in time', uri.toString());
    }
  }

  //DELETE
  //OTHER

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
        break;
      case 400:
        throw BadRequestExceptions(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
        break;
      case 401:
        throw BadRequestExceptions(
            "Required Argument Missing", response.request!.url.toString());
        break;
      case 403:
        throw UnauthorizedExceptions(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
        break;
      case 404:
        throw BadRequestExceptions(
            "Invalid Request ", response.request!.url.toString());
        break;
      case 500:
      default:
        throw FetchDataExceptions(
            "Error occured with status code ${response.statusCode}",
            response.request!.url.toString());
        break;
    }
  }
}
