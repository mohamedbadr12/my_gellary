import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gellary/core/cache/cache_helper.dart';

import 'core/app_router/app_router.dart';
import 'core/app_router/routes.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/dependency_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator.init();
  Bloc.observer = SimpleBlocObserver();
  CacheHelper().init();
  runApp(DevicePreview(
    enabled: false,
    builder: (context) =>const MyGallery() ,
       ));
}

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: Routes.loginRoute,
      onGenerateRoute: AppRouter.generateRoute,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        fontFamily: 'segoe ui',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
