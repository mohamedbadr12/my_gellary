import 'package:flutter/material.dart';

import '../../../../../core/app_router/routes.dart';
import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.loginRoute);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image),
            Text(
              text,
              style: Styles.textStyle20SemiBold(context),
            )
          ],
        ),
      ),
    );
  }
}
