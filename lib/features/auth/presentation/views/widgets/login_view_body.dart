
import 'package:flutter/material.dart';
import 'login_background_image.dart';
import 'login_container_add_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
          children: [
            LoginBackgroundImage(),
            LoginContainerAddField()
          ],
        );


  }
}

