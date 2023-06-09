import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/size.dart';
import 'package:hc_app_sample/widgets/buttons.dart';

import '../../configuration/assets.dart';
import '../../configuration/style.dart';
import '../../widgets/logo.dart';
import '../is_travel_alone_screen/is_travel_alone_screen.dart';

class AskAgeScreen extends StatelessWidget {
  const AskAgeScreen({super.key});

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
      body: ListView(children: [
        SizedBox(
          height: SizeConfig.blockY! * 5,
        ),
        const Center(
          child: Text(
            "How old are you?",
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
          ),
        ),
        CircleAvatar(
          radius: 200,
          backgroundColor: kWhite,
          child: Image.asset(
            kChildAdult,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              child: WidgetElevatedButtonOne(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const IsTravelAloneScreen(),
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
                  kColor: kOrange,
                  kName: "< 14"),
            ),
            SizedBox(
              width: 150,
              child: WidgetElevatedButtonOne(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const IsTravelAloneScreen(),
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
                  kColor: kOrange,
                  kName: "14 - 17"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              child: WidgetElevatedButtonOne(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const IsTravelAloneScreen(),
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
                  kColor: kOrange,
                  kName: "18 - 59"),
            ),
            SizedBox(
              width: 150,
              child: WidgetElevatedButtonOne(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const IsTravelAloneScreen(),
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
                  kColor: kOrange,
                  kName: "60+"),
            ),
          ],
        )
      ]),
    );
  }
}
