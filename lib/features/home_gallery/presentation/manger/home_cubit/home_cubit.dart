import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

import '../../../data/model/home_model/home_model.dart';
import '../../../data/repositry/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  final HomeRepo homeRepo;

  XFile? image;

  getHomeData() async {
    emit(HomeLoading());
    final response = await homeRepo.getHomeData();

    response.fold((error) => emit(HomeFailure(message: error.errorMessage)),
        (success) => emit(HomeSuccess(home: success)));
  }

  uploadProfile(XFile pic) async {
    image = pic;
    emit(UploadProfile());
  }

  sentImage() async {
    emit(ImagePickedLoading());
    final response = await homeRepo.sendImage(image!);
    response.fold(
        (error) => emit(ImagePickedFailure(message: error.errorMessage)),
        (success) => emit(ImagePickedSuccess()));
  }
}
