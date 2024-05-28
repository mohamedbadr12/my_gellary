import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/app_router/app_router.dart';
import 'core/app_router/routes.dart';

void main() {
  runApp(DevicePreview(
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
