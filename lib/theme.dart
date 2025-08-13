import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final Color primaryTeal = Colors.teal.shade600;
  static final Color accentOrange = Colors.deepOrange.shade400;

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryTeal,
    colorScheme: ColorScheme.light(
      primary: primaryTeal,
      secondary: accentOrange,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
  );
}
