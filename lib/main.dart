import 'package:flutter/material.dart';
import 'package:ui_clones/app-project/app-project-comments.dart';
import 'package:ui_clones/app-project/app-project.dart';
import 'package:ui_clones/dependancies-injection/bindings.dart';
import 'package:ui_clones/gym/detail-page.dart';
import 'package:ui_clones/routing/routes.dart';
import 'package:ui_clones/user-profil/user-profil.dart';
import 'package:ui_clones/vanessa/country-detail-page-new.dart';
import 'package:ui_clones/vanessa/home-page.dart';
import 'package:ui_clones/vanessa/country-detail-page-old.dart';
import 'package:ui_clones/vanessa/country-detail-page.dart';

void main() {
  AllBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xffF5F6F8)),
        scaffoldBackgroundColor: Color(0xffF5F6F8),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
