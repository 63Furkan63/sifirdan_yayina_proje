import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TemaIslemleri {
  static TextTheme acikYaziTema = TextTheme(
    bodyMedium: GoogleFonts.openSans(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 30.0,
      fontWeight: FontWeight.w800,
      color: Colors.black,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  );
  static TextTheme koyuYaziTema = TextTheme(
    bodyMedium: GoogleFonts.openSans(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 30.0,
      fontWeight: FontWeight.w800,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );

  static ThemeData acik() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      textTheme: acikYaziTema,
      textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.green),
    );
  }
   static ThemeData koyu() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      textTheme: koyuYaziTema,
    );
  }
}
