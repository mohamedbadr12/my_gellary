import 'package:flutter/material.dart';
import 'package:my_gellary/features/home_gallery/presentation/views/widgets/home_gallery_view_body.dart';

class HomeGalleryView extends StatelessWidget {
  const HomeGalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeGalleryViewBody(),
    );
  }
}
