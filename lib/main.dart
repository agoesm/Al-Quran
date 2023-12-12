import 'package:alquran/pages/home.dart';
import 'package:alquran/pages/onboard.dart';
import 'package:alquran/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isView;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // check onBoarding
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isView = prefs.getInt('onBoard');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: isView != 0 ? const OnBoard() : const Home(),
    );
  }
}
