import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/home_model/home_model.dart';
import '../../../data/repositry/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  final HomeRepo homeRepo;

  getHomeData() async {
    emit(HomeLoading());
    final response = await homeRepo.getHomeData();

    response.fold((error) => emit(HomeFailure(message: error.errorMessage)),
        (success) => emit(HomeSuccess(home: success)));
  }
}
