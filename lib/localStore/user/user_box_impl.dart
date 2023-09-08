import 'dart:convert';

import 'package:dcbase/dcbase.dart';
import 'package:g_tracker/localStore/user/user_box.dart';
import 'package:g_tracker/network/models/response/auth/register_response.dart';

class UserBoxImpl implements UserBox {
  static const String boxName = "user_box_hive";
  static const String userKey = "user_key";

  final SecureStorage secureStorage;

  UserBoxImpl({required this.secureStorage});

  factory UserBoxImpl.open() {
    return UserBoxImpl(secureStorage: BoxStore(boxName: boxName));
  }


  @override
  Future<void> saveUser(GUser user) {
    return secureStorage.putString(userKey, jsonEncode(user.toJson()));
  }

  @override
  GUser? user() {
    final userStr = secureStorage.getString(userKey, defaultValue: null);
    if (userStr != null && userStr.isNotEmpty) {
      return GUser.fromJson(jsonDecode(userStr));
    }
    return null;
  }
}




