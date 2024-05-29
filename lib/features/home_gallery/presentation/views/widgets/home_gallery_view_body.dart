import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gellary/features/home_gallery/presentation/manger/home_cubit/home_cubit.dart';

import 'custom_appbar.dart';
import 'custom_row_button_add_and_delete.dart';
import 'custom_sliver_grid_view.dart';

class HomeGalleryViewBody extends StatefulWidget {
  const HomeGalleryViewBody({super.key});

  @override
  State<HomeGalleryViewBody> createState() => _HomeGalleryViewBodyState();
}

class _HomeGalleryViewBodyState extends State<HomeGalleryViewBody> {
  @override
  void initState() {
    context.read<HomeCubit>().getHomeData();
    super.initState();
  }

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
