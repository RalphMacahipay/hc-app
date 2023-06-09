import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/assets.dart';
import 'package:hc_app_sample/configuration/size.dart';

import '../../../configuration/routes.dart';
import '../../../configuration/style.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/logo.dart';

import '../disclaimer/disclaimer.dart';
import '../is_hiv_screen/is_hiv_screen.dart';

class IsShipWreckScreen extends StatelessWidget {
  const IsShipWreckScreen({super.key});

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
              "Are you suffeing from a physical, mental, intellectual, or sensory disability resulting from illness, infection, injury, or trauma, especially if you are a shipwreck survivor or relatives of a shipwreck victim?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          CircleAvatar(
            radius: 150,
            backgroundColor: kWhite,
            child: Image.asset(
              kShipWreck,
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
                      const IsHIVScreen(),
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
