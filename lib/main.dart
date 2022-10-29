import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/onboarding_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: const Color(0xFF133386),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Color(0xFF133386),
          ),
          actionsIconTheme: IconThemeData(
            color: Color(0xFF133386),
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.white,
          ),
          headlineSmall: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
          bodySmall: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF2F2E41),
          ),
        ),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
