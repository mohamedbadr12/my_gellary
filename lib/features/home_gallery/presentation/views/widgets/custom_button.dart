import 'package:flutter/material.dart';

import '../../../../../core/app_router/routes.dart';
import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
  });

  final String image, text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(
              width: 10,
            ),
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
