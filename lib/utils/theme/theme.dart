import 'package:alquran/utils/constants/colors.dart';
import 'package:alquran/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    // colorScheme: ColorScheme.fromSwatch(
    //   primarySwatch: Palette.primaryBlue,
    //   accentColor: Palette.primaryBlue,
    //   backgroundColor: Palette.primaryBlue,
    // ),
    // primarySwatch: Colors.blue,
    useMaterial3: true,
    textTheme: myTextTheme,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
