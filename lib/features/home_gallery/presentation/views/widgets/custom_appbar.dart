import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome",
            style: Styles.textStyle32SemiBold(context),
          ),
          Text(
            "Mina",
            style: Styles.textStyle32SemiBold(context),
          )
        ],
      ),
      CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(AppAssets.homeCircleAvatar),
      )
    ]);
  }
}
