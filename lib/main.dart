import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:teklifim_gelsin/screens/home_screen/home_screen.dart';

import 'common/service/init_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitializeServices().dependencies();

  //Status Bar Color And Set Device Orientations
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (_) async {
      runApp(GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        theme: ThemeData(),
      ));
    },
  );
}
