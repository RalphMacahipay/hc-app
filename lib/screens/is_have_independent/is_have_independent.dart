import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/assets.dart';
import 'package:hc_app_sample/configuration/size.dart';
import 'package:hc_app_sample/screens/disclaimer/disclaimer.dart';

import '../../configuration/routes.dart';
import '../../configuration/style.dart';
import '../../widgets/buttons.dart';
import '../../widgets/logo.dart';
import '../is_have_older/is_have_older.dart';

class IsHaveIndependentScreen extends StatelessWidget {
  const IsHaveIndependentScreen({super.key});

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
            height: SizeConfig.blockY! * 2,
          ),
          const Center(
            child: Text(
              "Are you a single person of 18 years or above with one or more dependent(s), including at least 1 biological or non-biological child?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          CircleAvatar(
            radius: 150,
            backgroundColor: kWhite,
            child: Image.asset(
              kMotherChild,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: SizeConfig.blockY! * 15,
          ),
          WidgetElevatedButtonOne(
            kColor: kOrange,
            kName: "Yes",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const IsHaveOlderScreen(),
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
            kName: "No",
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
