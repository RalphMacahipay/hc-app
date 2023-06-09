import 'package:flutter/material.dart';
import 'package:hc_app_sample/configuration/size.dart';
import '../../../../widgets/text.dart';
import 'package:hc_app_sample/widgets/buttons.dart';
import '../../../../configuration/style.dart';
import '../../../../widgets/logo.dart';
import '../../../configuration/assets.dart';
import '../../registration/introduction/introduction.dart';

class ArriveGreeceScreen extends StatelessWidget {
  const ArriveGreeceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppbarLogoWidget(),
        backgroundColor: kWhite,
        elevation: 0,
      ),
      backgroundColor: kWhite,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockX! * 2),
        children: [
          SizedBox(height: SizeConfig.blockY! * 1),
          const TextWidget(
            kString: "Arrival in Greece",
            kFontSize: 30,
            kFontWeight: FontWeight.bold,
            kTextAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.blockY! * 1),
          CircleAvatar(
            radius: 150,
            backgroundColor: kWhite,
            child: Image.asset(
              kShipWreck,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: SizeConfig.blockY! * 3),
          const Center(child: Text("Arrival and first screening")),
          SizedBox(height: SizeConfig.blockY! * 20),
          WidgetElevatedButtonOne(
            kColor: kOrange,
            kName: "Proceed",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const IntroductionScreen(),
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
            suffixButton: const Icon(Icons.arrow_circle_right_sharp),
          ),
          const TextButtonWidget(
            key: Key('textButtonWidget'),
          ),
        ],
      ),
    );
  }
}
