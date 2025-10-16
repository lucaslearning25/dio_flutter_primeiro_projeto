import 'package:dioproject/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:dioproject/pages/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: GoogleFonts.robotoTextTheme()
      ),
      home: const LoginPage(),
    );
  }
}

