// import 'package:flutter/material.dart';

// import '../../configuration/assets.dart';
// import '../../configuration/constant.dart';
// import '../../configuration/routes.dart';
// import '../../configuration/size.dart';
// import '../../configuration/style.dart';
// import '../../widgets/buttons.dart';
// import '../../widgets/text.dart';

// class DisclaimerScreenHere extends StatelessWidget {
//   const DisclaimerScreenHere({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockX! * 2),
//       children: [
//         SizedBox(height: SizeConfig.blockY! * 3),
//         CircleAvatar(
//           radius: 40, // Adjust the size of the avatar
//           backgroundColor: kWhite, // Set the background color of the avatar
//           child: Image.asset(
//             kLogo, // Path to the logo image file
//             fit: BoxFit.cover, // Adjust the image fitting inside the circle
//           ),
//         ),
//         SizedBox(height: SizeConfig.blockY! * 1),
//         const TextWidget(
//           kString: "Disclaimer",
//           kFontSize: 30,
//           kFontWeight: FontWeight.bold,
//           kTextAlign: TextAlign.center,
//         ),
//         SizedBox(height: SizeConfig.blockY! * 1),
//         const TextWidget(
//           kFontWeight: FontWeight.normal,
//           kFontSize: 15,
//           kString: kDisclaimerString,
//           kTextAlign: TextAlign.center,
//         ),
//         SizedBox(height: SizeConfig.blockY! * 5),
//         WidgetElevatedButtonOne(
//           kColor: kOrange,
//           kName: "Proceed",
//           onPressed: () {
//             Navigator.pushNamed(context, kIntroductionRoutes);
//           },
//           suffixButton: const Icon(Icons.arrow_circle_right_sharp),
//         ),
//         SizedBox(height: SizeConfig.blockY! * 1),
//         const TextButtonWidget(
//           key: Key('textButtonWidget'), // Add key parameter
//         ),
//       ],
//     );
//   }
// }
