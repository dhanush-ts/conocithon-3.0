import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_parking_app/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.red,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black, 
          foregroundColor: Colors.white,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.black,   
          indicatorColor: Colors.grey[400],
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.white,         
            ),
          ),
          iconTheme: MaterialStateProperty.all(
            const IconThemeData(
              color: Colors.white,
            ),
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}

