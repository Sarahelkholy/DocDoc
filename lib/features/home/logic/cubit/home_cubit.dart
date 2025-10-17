import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:docdoc/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (specializationResponseModel) {
        emit(HomeState.specializationSuccess(specializationResponseModel));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationError(errorHandler));
      },
    );
  }
}
