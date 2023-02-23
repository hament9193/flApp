import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:first_app/pages/home_page_new.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/login_page.dart';
import 'utils/MyRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: MyTheme.themeData,
      darkTheme: MyTheme.darkTheme(),
      routes: {
        MyRoutes.rootRoute: (contesxt) => const HomePage(),
        MyRoutes.homeRoute: (contesxt) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
