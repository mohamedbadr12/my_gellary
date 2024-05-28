
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class LoginBackgroundImage extends StatelessWidget {
  const LoginBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.loginImage,
            ),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high
        ),
      ),
    );
  }
}
