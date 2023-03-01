import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get themeData => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonTheme: const ButtonThemeData(buttonColor: darkBluishColor),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
        elevation: 0.0,
      ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
          .copyWith(secondary: Colors.black));

  static ThemeData darkTheme() => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkBluishColor,
      buttonTheme: ButtonThemeData(buttonColor: darkBluishColor),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
        elevation: 0.0,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white));

  static const Color creamColor = const Color(0xfff5f5f5);
  static const Color darkCreamColor = const Color(0xff0b0b0b);
  static const Color darkBluishColor = const Color(0xff403b58);
  static const Color lightBluishColor = Color.fromARGB(255, 47, 19, 183);
}
