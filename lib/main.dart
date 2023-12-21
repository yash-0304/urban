import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
//
import 'package:urbanchic/res/routes/routes.dart';
//
//

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UMLA',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent),
        primaryColor: const Color(0xFF515ADA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFEFD5FF),
          surfaceTint: Colors.transparent,
          background: Colors.white,
        ),
        useMaterial3: true,
      ),
      getPages: ApplicationRoutes.appRoutes().toList(),
    );
  }
}
