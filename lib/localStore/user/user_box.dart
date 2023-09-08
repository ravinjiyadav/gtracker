import 'package:g_tracker/network/models/auth_models.dart';

abstract class UserBox {
  GUser? user();

  Future<void> saveUser(GUser user);
}
