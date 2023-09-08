import 'package:g_tracker/network/models/response/auth/register_response.dart';
import 'package:g_tracker/network/models/response/circles/circle.dart';

abstract class LinkBox {
  GLink? link();

  Future<void> saveLink(GLink links);
}
