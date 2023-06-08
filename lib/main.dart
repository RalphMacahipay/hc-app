import 'package:flutter/material.dart';
import 'package:hc_app_sample/screens/disclaimer/disclaimer.dart';
import 'package:hc_app_sample/screens/introduction/introduction.dart';
import 'package:hc_app_sample/screens/registration.dart';

import 'configuration/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        kDisclaimerRoutes: (context) => const DisclaimerScreen(),
        kIndexScreenRoutes: (context) => const Registration(),
        kIntroductionRoutes: (context) => const IntroductionScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const Registration(),
    );
  }
}
