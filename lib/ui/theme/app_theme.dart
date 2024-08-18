import 'package:flutter/material.dart';

class AppTheme {
  //светлая тема
  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey.withOpacity(0.8),
      selectedItemColor: Colors.purple,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
      ),
    ),
    scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
    useMaterial3: true,
    cardColor: Colors.white,
  );

  //темная тема
  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color.fromARGB(66, 54, 53, 53),
      unselectedItemColor: Colors.grey.withOpacity(0.8),
      selectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Color.fromARGB(66, 54, 53, 53),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.white.withOpacity(0.6),
      ),
      titleSmall: TextStyle(
        color: Colors.white.withOpacity(0.6),
      ),
    ),
    scaffoldBackgroundColor: Colors.black,
    useMaterial3: true,
    cardColor: const Color.fromARGB(66, 54, 53, 53),
  );
}
