import 'package:flutter/material.dart';
import 'package:gods_time/config/app_routes.dart';
import 'package:gods_time/pages/edith_profile_page.dart';
import 'package:gods_time/pages/home_page.dart';
import 'package:gods_time/pages/login_page.dart';
import 'package:gods_time/pages/main_page.dart';
import 'package:gods_time/pages/test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Urbanist', brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.login,
        routes: AppRoutes.pages);
  }
}
