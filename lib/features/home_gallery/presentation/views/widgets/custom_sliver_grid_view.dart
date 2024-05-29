import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gellary/features/home_gallery/presentation/manger/home_cubit/home_cubit.dart';

class CustomSliverGridView extends StatelessWidget {
  const CustomSliverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      if (state is HomeSuccess) {
        return SliverGrid.builder(
            itemCount: state.home.images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return state is HomeLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: NetworkImage(state.home.images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
            });
      }
      if (state is HomeFailure) {
        return SliverToBoxAdapter(child: Text(state.message));
      } else {
        return const SliverToBoxAdapter(
            child: Center(
          child: Text("something went wrong"),
        ));
      }
    });
  }
}
