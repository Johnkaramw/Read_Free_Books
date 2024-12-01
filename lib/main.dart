import 'package:book_app/constans.dart';
import 'package:book_app/core/help/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const BoockApp());
}
class BoockApp extends StatelessWidget {
  const BoockApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterAcsses.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:  kPrimaryColor,
        textTheme: GoogleFonts.aBeeZeeTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
