import 'package:flutter/material.dart';
import 'package:tobetoapp/pages/main_page.dart';

ColorScheme lightColorsScheme = ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 114, 33, 243));
void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightColorsScheme,
            appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: lightColorsScheme.onPrimaryContainer,
                foregroundColor: lightColorsScheme.primaryContainer),
            cardTheme: const CardTheme().copyWith(
                elevation: 12,
                color: lightColorsScheme.onPrimary,
                shadowColor: Colors.black,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
            textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: lightColorsScheme.primary,
                      fontSize: 22),
                ),
            iconTheme: const IconThemeData(size: 24),
            snackBarTheme: SnackBarThemeData(
              backgroundColor: lightColorsScheme.primary,
              behavior: SnackBarBehavior.floating,
              elevation: 18,
              actionBackgroundColor: lightColorsScheme.primary,
              contentTextStyle: TextStyle(
                  color: lightColorsScheme.onPrimaryContainer,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              actionTextColor: lightColorsScheme.onPrimaryContainer,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                foregroundColor: lightColorsScheme.onPrimaryContainer,
                backgroundColor: lightColorsScheme.primary,
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.black)))),

        home: MainPage()),
  );
}