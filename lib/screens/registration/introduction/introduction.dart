import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/assets.dart';
import 'package:hc_app_sample/configuration/size.dart';
import 'package:hc_app_sample/widgets/buttons.dart';
import '../../../configuration/constant.dart';
import '../../../configuration/routes.dart';
import '../../../configuration/style.dart';
import '../../../widgets/logo.dart';

import '../disclaimer/disclaimer.dart';

import '../how_old_screen/how_old_screen.dart';

class IntroductionPage extends StatelessWidget {
  final String logoImagePath;

  const IntroductionPage({super.key, required this.logoImagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: kWhite,
            child: Image.asset(
              logoImagePath,
              fit: BoxFit.cover,
            ),
          ),
          // Rest of the introduction page content
        ],
      ),
    );
  }
}

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        centerTitle: true,
        title: const AppbarLogoWidget(),
        backgroundColor: kWhite,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          const Center(
            child: Text(
              "Introduction",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          CircleAvatar(
            radius: 150,
            backgroundColor: kWhite,
            child: Image.asset(
              kPersonQuestion,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            kAsking,
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SizeConfig.blockY! * 10,
          ),
          WidgetElevatedButtonOne(
            kColor: kOrange,
            kName: "Confirm",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const AskAgeScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
              );
            },
            kFontSize: 15,
            kPageRoute: kAskingRoutes,
          ),
          WidgetElevatedButtonOne(
            kColor: kOrange,
            kName: "Go back",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const DisclaimerScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
              );
            },
            kFontSize: 15,
            kPageRoute: kAskingRoutes,
          ),
        ],
      ),
    );
  }
}
