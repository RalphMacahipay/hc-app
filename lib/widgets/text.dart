import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String kString;
  final double kFontSize;
  final TextAlign kTextAlign;
  final FontWeight? kFontWeight;
  const TextWidget({
    super.key,
    required this.kString,
    required this.kFontSize,
    required this.kTextAlign,
    this.kFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      kString,
      style: TextStyle(
        fontSize: kFontSize,
        fontWeight: kFontWeight,
      ),
      textAlign: kTextAlign,
    );
  }
}
