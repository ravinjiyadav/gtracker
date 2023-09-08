import 'package:dcbase/dcbase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g_tracker/localStore/link/link_box.dart';
import 'package:g_tracker/localStore/link/link_box_impl.dart';
import 'package:g_tracker/network/end_points.dart';
import 'package:g_tracker/network/repository/auth_repository.dart';
import 'package:g_tracker/network/repository/circle_repository.dart';
import 'package:g_tracker/network/repository/device_repository.dart';
import 'package:g_tracker/network/repository/member_repository.dart';
import 'package:g_tracker/network/repository/place_repository.dart';
import 'package:g_tracker/network/repository/setting_repository.dart';
import 'package:g_tracker/network/repository/user_repository.dart';
import '../localStore/user/user_box.dart';
import '../localStore/user/user_box_impl.dart';

final httpServiceProvider = Provider<HttpService>((ref) => DioHttpService(
      tokenBox: ref.read(tokenBoxProvider),
      baseUrl: Endpoints.baseUrl
    ));

final placeRepositoryProvider =
    Provider((ref) => PlaceRepository(ref.read(httpServiceProvider)));

final tokenBoxRepositoryProvider = Provider((ref) => NetworkTokenBox.open());

final authRepositoryProvider =
    Provider((ref) => AuthRepository(ref.read(httpServiceProvider)));

final settingRepositoryProvider =
    Provider((ref) => SettingRepository(ref.read(httpServiceProvider)));

final userRepositoryProvider =
    Provider((ref) => UserRepository(ref.read(httpServiceProvider)));

final deviceRepositoryProvider = Provider(
    (ref) => DeviceRepository(httpService: ref.read(httpServiceProvider)));

final circleRepositoryProvider = Provider(
    (ref) => CircleRepository(httpService: ref.read(httpServiceProvider)));

final memberRepositoryProvider = Provider(
    (ref) => MemberRepository(httpService: ref.read(httpServiceProvider)));

final tokenBoxProvider = Provider<TokenBox>((ref) => NetworkTokenBox.open());
final userBoxProvider = Provider<UserBox>((ref) => UserBoxImpl.open());
final linkBoxProvider = Provider<LinkBox>((ref) => LinkBoxImpl.open());
