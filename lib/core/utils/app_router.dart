import 'package:flutter/material.dart';


abstract class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) {
            return  Text("data");
          },
        );

    }
    return null;
  }
}
