import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemeData{
static ThemeData lightTheme(BuildContext context) => ThemeData(
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      color: Color(0xFFF0EBE3),
      elevation: 1,
      iconTheme: IconThemeData(color: Color(0xFF415A53)),
    )
);
static ThemeData darkTheme(BuildContext context) => ThemeData(
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      color: Color(0xFFF0EBE3),
      elevation: 1,
      iconTheme: IconThemeData(color: Color(0xFF415A53)),
    )
);
}
