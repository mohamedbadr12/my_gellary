import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_gellary/core/utils/assets.dart';
import 'package:my_gellary/core/utils/styles.dart';

class HomeGalleryViewBody extends StatelessWidget {
  const HomeGalleryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(child: CustomAppBar()),
      SliverToBoxAdapter(child: SizedBox(height: 50)),
      SliverToBoxAdapter(child: CustomRowButtonAddAndDelete()),
      SliverToBoxAdapter(child: SizedBox(height: 30)),
      CustomSliverGridView()
    ]);
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome",
            style: Styles.textStyle32SemiBold(context),
          ),
          Text(
            "Mina",
            style: Styles.textStyle32SemiBold(context),
          )
        ],
      ),
      CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(AppAssets.homeCircleAvatar),
      )
    ]);
  }
}

class CustomRowButtonAddAndDelete extends StatelessWidget {
  const CustomRowButtonAddAndDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          image: AppAssets.icon,
          text: "Log out",
        ),
        const Spacer(),
        CustomButton(
          image: AppAssets.icon2,
          text: "Upload",
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          Text(
            text,
            style: Styles.textStyle20SemiBold(context),
          )
        ],
      ),
    );
  }
}

class CustomSliverGridView extends StatelessWidget {
  const CustomSliverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 40,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(AppAssets.loginImage),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
