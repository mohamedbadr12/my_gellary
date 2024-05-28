
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class LoginContainerAddField extends StatelessWidget {
  const LoginContainerAddField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 150,
          right: 40,
          left: 40,

        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "LOG IN",
                  style: Styles.textStyle30Bold(context),
                ),
                const SizedBox(height: 20,),
                const CustomTextFormField(
                  hintText: "User Name",
                ),
                const SizedBox(
                  height: 24,
                ),
                const CustomTextFormField(
                  hintText: "Password",
                ),
                const SizedBox(height: 24,),
                const CustomButton(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}