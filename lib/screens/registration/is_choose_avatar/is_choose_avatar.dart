import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/assets.dart';
import 'package:hc_app_sample/configuration/size.dart';

import 'package:hc_app_sample/provider/provider_nationality.dart';
import 'package:provider/provider.dart';
import '../../../configuration/routes.dart';
import '../../../configuration/style.dart';
import '../../../widgets/buttons.dart';

import '../../../widgets/logo.dart';
import '../disclaimer/disclaimer.dart';
import '../is_username_screen/is_username_screen.dart';

class IsChooseAvatar extends StatelessWidget {
  const IsChooseAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SelectedNationality(),
      child: Scaffold(
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
                "Please choose your avatar that will guide you through the asylum process.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: kWhite,
                  child: Image.asset(
                    kAvatarOne,
                    fit: BoxFit.cover,
                  ),
                ),
                CircleAvatar(
                  radius: 70,
                  backgroundColor: kWhite,
                  child: Image.asset(
                    kAvatarTwo,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: kWhite,
                  child: Image.asset(
                    kAvatarThree,
                    fit: BoxFit.cover,
                  ),
                ),
                CircleAvatar(
                  radius: 70,
                  backgroundColor: kWhite,
                  child: Image.asset(
                    kAvatarFour,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockY! * 5,
            ),
            SizedBox(height: SizeConfig.blockY! * 5),
            WidgetElevatedButtonOne(
              kColor: kOrange,
              kName: "Confirm",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const IsUserNameScreen(),
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
              kName: "Go Back",
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
      ),
    );
  }

  String getFlagAsset(String nationality) {
    // Example function to return the appropriate flag asset based on nationality
    // Replace with your own logic to map nationalities to flag assets
    switch (nationality) {
      case 'Afghanistan':
        return kAfghanistan;
      case 'Austria':
        return kAustria;
      case 'Belgium':
        return kBelgium;
      default:
        return ''; // Return a default flag asset or handle missing cases
    }
  }
}
