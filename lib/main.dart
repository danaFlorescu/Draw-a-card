import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffDC0000),
        ),
        scaffoldBackgroundColor: Color(0xff850000),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffDC0000), // background (button) color
          ),
        ),
      ),
      home: PlayingCards(),
    ),
  );
}
