import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// 
// 
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Splash Screen",style: GoogleFonts.poppins(),),
      ),
    );
  }
}