import 'dart:convert';

import 'package:dcbase/dcbase.dart';
import 'package:g_tracker/localStore/link/link_box.dart';
import 'package:g_tracker/network/models/response/auth/register_response.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';

class LinkBoxImpl implements LinkBox {
  static const String boxName = "circle_box_hive";
  static const String userKey = "circle_key";

  final SecureStorage secureStorage;

  LinkBoxImpl({required this.secureStorage});

  factory LinkBoxImpl.open() {
    return LinkBoxImpl(secureStorage: BoxStore(boxName: boxName));
  }


  @override
  Future<void> saveLink(GLink links) {
    return secureStorage.putString(userKey, jsonEncode(links.toJson()));
  }



  @override
  GLink? link() {
    final userStr = secureStorage.getString(userKey, defaultValue: null);
    if (userStr != null && userStr.isNotEmpty) {
      return GLink.fromJson(jsonDecode(userStr));
    }
    return null;
  }
}




