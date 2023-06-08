import 'package:flutter/material.dart';

import '../../configuration/style.dart';

class IntroductionPage extends StatelessWidget {
  final String logoImagePath;

  const IntroductionPage({super.key, required this.logoImagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: kWhite,
            child: Image.asset(
              logoImagePath,
              fit: BoxFit.cover,
            ),
          ),
          // Rest of the introduction page content
        ],
      ),
    );
  }
}

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
