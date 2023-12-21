import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';
//
//
import 'package:urbanchic/res/routes/route-names.dart';
import 'package:urbanchic/view/splashscreen.dart';
//
//
class ApplicationRoutes {
  static appRoutes() => {
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
          // transitionDuration: Duration(milliseconds: 250),
          // transition: Transition.leftToRight,
        ),
        // 
        // GetPage(
        //   name: RouteName.alldeals,
        //   page: () => ShowCaseWidget(
        //       builder: Builder(builder: (context) => Alldeals(),
        // ),
        // ),
        //   // transitionDuration: Duration(milliseconds: 250),
        //   transition: Transition.rightToLeft,
        // );
      };
}
