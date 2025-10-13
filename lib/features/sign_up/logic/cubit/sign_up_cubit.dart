import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:docdoc/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:docdoc/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignUpState.signupLoading());
    final response = await _signUpRepo.signup(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignUpState.signupSuccess(signupResponse));
      },
      failure: (error) {
        emit(SignUpState.signupError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
