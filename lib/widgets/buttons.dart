import 'package:flutter/material.dart';
import 'package:hc_app_sample/widgets/text.dart';

import '../configuration/fonts.dart';
import '../configuration/routes.dart';
import '../configuration/size.dart';
import '../configuration/style.dart';

// BUTTON WIDGET ONE
// class WidgetElevatedButtonOne extends StatelessWidget {
//   final VoidCallback onPressed;
//   final double? kFontSize;
//   final String kName;
//   final String? kPageRoute;
//   final Color kColor;
//   const WidgetElevatedButtonOne({
//     required this.onPressed,
//     super.key,
//     this.kFontSize,
//     this.kPageRoute,
//     required this.kColor,
//     required this.kName,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         backgroundColor: kColor,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(
//             kBorderRadius,
//           ),
//         ),
//       ),
//       child: Text(kName,
//           style: TextStyle(
//               fontFamily: kfontReg, color: kWhite, fontSize: kFontSize)),
//     );
//   }
// }

class WidgetElevatedButtonOne extends StatelessWidget {
  final VoidCallback onPressed;
  final double? kFontSize;
  final String kName;
  final String? kPageRoute;
  final Color kColor;
  final Icon? suffixButton; // New property for suffix button
  const WidgetElevatedButtonOne({
    required this.onPressed,
    Key? key, // Added Key parameter for super
    this.kFontSize,
    this.kPageRoute,
    required this.kColor,
    required this.kName,
    this.suffixButton, // Initialize the suffix button
  }) : super(key: key); // Call super constructor with key

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            kBorderRadius,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(kName,
              style: TextStyle(
                  fontFamily: kfontReg, color: kWhite, fontSize: kFontSize)),
          if (suffixButton != null)
            const SizedBox(
                width: 8), // Add spacing between the text and suffix button
          suffixButton ??
              const SizedBox
                  .shrink(), // Display the suffix button or an empty SizedBox
        ],
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key, // Add key parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(
            context, kIndexScreenRoutes, (route) => false);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.arrow_circle_left_sharp),
          SizedBox(width: SizeConfig.blockY! * 1),
          const TextWidget(
              kString: "Go back to home screen",
              kFontSize: 15,
              kTextAlign: TextAlign.center)
        ],
      ),
    );
  }
}
