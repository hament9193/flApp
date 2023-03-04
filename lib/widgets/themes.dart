import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get themeData => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonTheme: const ButtonThemeData(
        buttonColor: darkBluishColor,
        textTheme: ButtonTextTheme.primary,
      ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(darkBluishColor),
              shape: MaterialStateProperty.all(const StadiumBorder()),
              foregroundColor: const MaterialStatePropertyAll(Colors.white),
              textStyle: const MaterialStatePropertyAll(TextStyle(
                color: Colors.white,
              )))),
      primaryTextTheme: const TextTheme(
          titleLarge: const TextStyle(color: Colors.black, fontSize: 42),
          titleMedium: const TextStyle(color: Colors.black, fontSize: 32),
          bodyMedium: const TextStyle(color: Colors.black, fontSize: 16)),
      textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.grey, fontSize: 42),
          titleMedium: TextStyle(color: Colors.grey, fontSize: 32),
          bodyMedium: TextStyle(color: Colors.grey, fontSize: 16)),
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(darkBluishColor),
        iconColor: MaterialStatePropertyAll(Colors.white),
      )),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: darkBluishColor,
        foregroundColor: creamColor,
      ),
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
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(creamColor),
        iconColor: MaterialStatePropertyAll(Colors.black),
      )),
      buttonTheme: const ButtonThemeData(
        buttonColor: creamColor,
        textTheme: ButtonTextTheme.primary,
      ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(creamColor),
              shape: MaterialStateProperty.all(const StadiumBorder()),
              foregroundColor: const MaterialStatePropertyAll(Colors.black),
              textStyle: const MaterialStatePropertyAll(TextStyle(
                color: Colors.black,
              )))),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: creamColor,
        foregroundColor: darkBluishColor,
      ),
      primaryTextTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.white, fontSize: 42),
          titleMedium: TextStyle(color: Colors.white, fontSize: 32),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 16)),
      textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.cyan, fontSize: 42),
          titleMedium: TextStyle(color: Colors.cyan, fontSize: 32),
          bodyMedium: TextStyle(color: Colors.cyan, fontSize: 16)),
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
