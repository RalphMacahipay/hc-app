import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/assets.dart';
import 'package:hc_app_sample/configuration/size.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import '../../../configuration/routes.dart';
import '../../../configuration/style.dart';
import '../../../get/get.dart';
import '../../../provider/provider_nationality.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/logo.dart';

import '../disclaimer/disclaimer.dart';
import '../is_have_wife_screen/is_have_wife_screen.dart';

class IsNationalityScreen extends StatelessWidget {
  IsNationalityScreen({Key? key}) : super(key: key);
  final GetDropDownController getController = Get.put(GetDropDownController());
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
                "What is your nationality?",
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
            // GetBuilder<GetDropDownController>(
            //   builder: (controller) {
            //     return DropdownButton<String>(
            //       hint: const Text('Select Nationality'),
            //       value: null,
            //       onChanged: (value) => controller.setSelectedValue(value!),
            //       items: <String>[
            //         'Afghanistan',
            //         'Austria',
            //         'Belgium',
            //         // Add more nationalities as needed
            //       ].map<DropdownMenuItem<String>>((String value) {
            //         return DropdownMenuItem<String>(
            //           value: value,
            //           child: Row(
            //             children: [
            //               Image.asset(
            //                 // Add the appropriate image asset for each nationality
            //                 getFlagAsset(
            //                     value), // Example function to get the flag asset based on nationality
            //                 height: 20,
            //                 width: 30,
            //               ),
            //               const SizedBox(width: 10),
            //               Text(value),
            //             ],
            //           ),
            //         );
            //       }).toList(),
            //     );
            //   },
            // ),

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
                        const IsHaveWifeScreen(),
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
