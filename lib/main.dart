import 'package:flutter/material.dart';
import 'package:iist_bus/pages/home_page.dart';
import 'package:iist_bus/pages/loading_page.dart';
import 'package:iist_bus/pages/locationmap.dart';

import 'package:iist_bus/utils/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        "/":(context)=> const LoadingPage(),
        MyRoutes.loading:(context) => const LoadingPage(),
        MyRoutes.homeRoute:(context) => const HomePage(),
        MyRoutes.mapping:(context) => const LocationMap(),
      },
    );
  }
}