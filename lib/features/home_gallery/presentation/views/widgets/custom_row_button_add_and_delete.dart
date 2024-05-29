import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/app_router/routes.dart';
import '../../../../../core/utils/assets.dart';
import 'custom_button.dart';

class CustomRowButtonAddAndDelete extends StatelessWidget {
  const CustomRowButtonAddAndDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          onTap: () {
            Navigator.pushNamed(context, Routes.loginRoute);
          },
          image: AppAssets.icon,
          text: "Log out",
        ),
        const Spacer(),
        CustomButton(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.white.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: CustomButton(
                              onTap: () {
                                ImagePicker()
                                    .pickImage(source: ImageSource.gallery)
                                    .then((value) {});
                              },
                              image: AppAssets.galleryIcon,
                              text: "Gallery")),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: CustomButton(
                              image: AppAssets.cameraIcon, text: "Camera")),
                    ],
                  ),
                );
              },
            );
          },
          image: AppAssets.icon2,
          text: "Upload",
        ),
      ],
    );
  }
}
