import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/assets.dart';
import 'package:hc_app_sample/configuration/routes.dart';
import 'package:hc_app_sample/configuration/size.dart';
import 'dart:developer' as devtools show log;
import '../configuration/fonts.dart';
import '../configuration/style.dart';
import '../widgets/buttons.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    devtools.log(MediaQuery.of(context).size.height.toString());
    devtools.log("daf");
    return Scaffold(
      backgroundColor: kWhite,
      body: ListView(
        children: [
          SizedBox(height: SizeConfig.blockY! * 15),
          CircleAvatar(
            radius: 150, // Adjust the size of the avatar
            backgroundColor: kWhite, // Set the backgrou
            child: Image.asset(
              kLogo, // Path to the logo image file
              fit: BoxFit.cover, // Adjust the image fitting inside the circle
            ),
          ),
          SizedBox(height: SizeConfig.blockY! * 5),
          const Text(
            "Hemayat Christa",
            style: TextStyle(fontSize: 30, fontFamily: kBold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.blockY! * 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WidgetElevatedButtonOne(
                kFontSize: 15,
                kColor: kOrange,
                kName: "Create an Account",
                onPressed: () {
                  Navigator.pushNamed(context, kDisclaimerRoutes);
                },
              ),
              WidgetElevatedButtonOne(
                kFontSize: 15,
                kColor: kOrange,
                kName: "Offline Sign In",
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
