import 'package:flutter/material.dart';
import 'package:hc_app_sample/provider/provider.dart';

import 'package:hc_app_sample/screens/registration.dart';
import 'package:hc_app_sample/screens/registration/disclaimer/disclaimer.dart';
import 'package:hc_app_sample/screens/registration/how_old_screen/how_old_screen.dart';
import 'package:hc_app_sample/screens/registration/introduction/introduction.dart';
import 'package:hc_app_sample/screens/registration/is_travel_alone_screen/is_travel_alone_screen.dart';
import 'package:provider/provider.dart';

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
        kAskingRoutes: (context) => const AskAgeScreen(),
        kIsTravelAloneRoutes: (context) => const IsTravelAloneScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (context) => ServicesProvider(),
        ),
      ], child: const Registration()),
    );
  }
}

class UnknownScreen extends StatefulWidget {
  const UnknownScreen({super.key});

  @override
  State<UnknownScreen> createState() => _UnknownScreenState();
}

class _UnknownScreenState extends State<UnknownScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
