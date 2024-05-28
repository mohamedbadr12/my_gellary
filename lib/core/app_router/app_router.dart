import 'package:flutter/material.dart';
import 'package:my_gellary/core/app_router/routes.dart';
import 'package:my_gellary/features/auth/presentation/views/login_view.dart';


abstract class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) {
            return  const LoginView();
          },
        );

    }
    return null;
  }
}
