import 'dart:async';
import 'dart:io';
import 'package:dcbase/dcbase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_tracker/Helper/routes/app_routes.dart';
import 'package:g_tracker/localStore/link/link_box_impl.dart';
import 'package:g_tracker/localStore/user/user_box_impl.dart';
import 'package:g_tracker/localization/strings.dart';
import 'package:g_tracker/services/notification.dart';
import 'package:geolocator/geolocator.dart';
import 'package:loggy/loggy.dart';
import 'package:workmanager/workmanager.dart';
import 'firebase_options.dart';

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    print('Executing task from background');
    // await getLocation();

    //  Position userLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    try {
      Position userLocation = await Geolocator.getCurrentPosition();
      print("Location is - from bg ${userLocation.latitude}");
      logD("Location is - from bg ${userLocation.latitude}");
    } catch (e) {
      print(e.toString());
    }

    return Future.value(true);
  });
}

void main() async {
  await ScreenUtil.ensureScreenSize();
  await Hive.initFlutter();
  await Hive.openBox(NetworkTokenBox.boxName);
  await Hive.openBox(UserBoxImpl.boxName);
  await Hive.openBox(LinkBoxImpl.boxName);

  Loggy.initLoggy();
  StringStore.strings = appStrings;
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      name: "G-Tracker",
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  NotificationSettings settings =
      await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    provisional: false,
    sound: true,
  );

  NotificationService().initialiseNotification();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return MaterialApp(
      title: 'G-Tracker',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      themeMode: ThemeMode.light,
      theme: Dcbase.appTheme.light(),
      onGenerateRoute: AppRoute.generateRoute,
    );
  }
}
