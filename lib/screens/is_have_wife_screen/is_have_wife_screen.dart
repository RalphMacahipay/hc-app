import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/assets.dart';
import 'package:hc_app_sample/configuration/size.dart';
import 'package:hc_app_sample/screens/disclaimer/disclaimer.dart';
import 'package:hc_app_sample/provider/provider_nationality.dart';
import 'package:provider/provider.dart';
import '../../configuration/routes.dart';
import '../../configuration/style.dart';
import '../../widgets/buttons.dart';
import '../../widgets/logo.dart';
import '../how_old_screen/how_old_screen.dart';

class IsHaveWifeScreen extends StatelessWidget {
  const IsHaveWifeScreen({Key? key}) : super(key: key);

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
                "Do you have your wife/husband, child, mother/father, in any of these countries (Dublin III country) and you wish to be reunited with him/her?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            CircleAvatar(
              radius: 150,
              backgroundColor: kWhite,
              child: Image.asset(
                kRefugeeFlag,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockY! * 10,
            ),
            Consumer<SelectedNationality>(
              builder: (context, selectedNationality, _) =>
                  DropdownButton<String>(
                hint: const Text('Select Nationality'),
                value: selectedNationality.value,
                onChanged: (String? newValue) {
                  selectedNationality.value = newValue;
                },
                items: <String>[
                  'Afghanistan',
                  'Austria',
                  'Belgium',
                  // Add more nationalities as needed
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Row(
                      children: [
                        Image.asset(
                          // Add the appropriate image asset for each nationality
                          getFlagAsset(
                              value), // Example function to get the flag asset based on nationality
                          height: 20,
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(value),
                      ],
                    ),
                  );
                }).toList(),
              ),
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
