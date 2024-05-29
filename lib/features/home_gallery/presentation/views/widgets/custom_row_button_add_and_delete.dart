import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_button.dart';

class CustomRowButtonAddAndDelete extends StatelessWidget {
  const CustomRowButtonAddAndDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          image: AppAssets.icon,
          text: "Log out",
        ),
        const Spacer(),
        CustomButton(
          image: AppAssets.icon2,
          text: "Upload",
        ),
      ],
    );
  }
}
