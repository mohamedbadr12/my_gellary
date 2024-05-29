import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gellary/core/app_router/routes.dart';
import 'package:my_gellary/features/auth/presentation/manger/login/login_cubit.dart';
import 'package:my_gellary/features/auth/presentation/views/login_view.dart';
import 'package:my_gellary/features/home_gallery/presentation/manger/home_cubit/home_cubit.dart';
import 'package:my_gellary/features/home_gallery/presentation/views/home_gallery_view.dart';

import '../utils/dependency_injection.dart';

abstract class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
                create: (context) => LoginCubit(sl()),
                child: const LoginView());
          },
        );
      case Routes.homeGalleryRoute:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
                create: (context) => HomeCubit(sl()),
                child: const HomeGalleryView());
          },
        );
    }
    return null;
  }
}
