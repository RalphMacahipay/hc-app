import 'package:flutter/material.dart';

import '../configuration/assets.dart';
import '../configuration/style.dart';

class AppbarLogoWidget extends StatelessWidget {
  const AppbarLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: kWhite,
      child: Image.asset(
        kLogo,
        fit: BoxFit.cover,
      ),
    );
  }
}
