import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/size.dart';

import '../../../configuration/routes.dart';
import '../../../configuration/style.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/logo.dart';

import '../../chapter_one/arrive_greece_screen/arrive_greece_screen.dart';
import '../disclaimer/disclaimer.dart';

class IsUserNameScreen extends StatelessWidget {
  const IsUserNameScreen({super.key});

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
          SizedBox(
            height: SizeConfig.blockY! * 5,
          ),
          const Center(
            child: Text(
              "Thank you for your responses!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: SizeConfig.blockY! * 15,
          ),
          const Center(
              child: Text("Please choose your preferred username below")),
          SizedBox(
            height: SizeConfig.blockY! * 15,
          ),
          const TextField(),
          SizedBox(
            height: SizeConfig.blockY! * 15,
          ),
          WidgetElevatedButtonOne(
            kColor: kOrange,
            kName: "Proceed to Chapter 1",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const ArriveGreeceScreen(),
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
            kName: "Go back to Home Screen",
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
