  import 'package:book_app/core/help/router.dart';
import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BoockApp());
}

class BoockApp extends StatelessWidget {
  const BoockApp({super.key});
  @override   Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:  RouterAcsses.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 0, 4, 65),
          textTheme: GoogleFonts.aBeeZeeTextTheme(ThemeData.dark().textTheme)),
    );
  }
}

