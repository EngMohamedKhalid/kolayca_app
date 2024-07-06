
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kolayca_app/app/widgets/custom_alert_dialog.dart';
import 'package:kolayca_app/features/BNB_feature/presentation/screens/BNB_screen.dart';
import '../../../../app/services/cache_service.dart';
import '../../../../app/utils/get_it_injection.dart';
import '../../../../app/utils/hanlders/error_state_handler.dart';
import '../../../../app/utils/helper.dart';
import '../../../../app/utils/navigation_helper.dart';
import '../../../../app/widgets/flutter_toast.dart';
import '../../data/models/user_model.dart';
import '../../domain/use_cases/auth_usecases/get-all_specializations_use_case.dart';
import '../../domain/use_cases/auth_usecases/login_use_case.dart';
import '../../domain/use_cases/auth_usecases/register_use_case.dart';
import '../../domain/use_cases/auth_usecases/resend_otp_usecase.dart';
import '../screens/login_screen.dart';
import 'dart:io' show Platform;

import '../screens/sucess_screen.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get() => BlocProvider.of(getIt<NavHelper>().navigatorKey.currentState!.context);


  final loginPasswordController = TextEditingController();
  final loginNameController = TextEditingController();
  //////////////////////////////////////////
  final otpEmailController = TextEditingController();
  final otpController = TextEditingController();
  final resetPassController = TextEditingController();
  final resetPassConfirmController = TextEditingController();
  /////////// REGISTER CONTROLLERS/////////////
  final registerEmailController = TextEditingController();
  final registerNameController = TextEditingController();
  final registerPassController = TextEditingController();
  final registerPassConfirmController = TextEditingController();

  //////////////////////////////////
  bool passObscure = true;
  bool passConfObscure = true;
  String ? errorMsg;
  AllUserModel ? userModel;
  void changeVisible(){
    emit(LoadingState());
    passObscure = !passObscure;
    emit(AuthInitial());
  }

  void changeConfVisible(){
    emit(LoadingState());
    passConfObscure = !passConfObscure;
    emit(AuthInitial());
  }

  void login() async {
    errorMsg=null;
    emit(LoadingState());
    final response = await getIt<LoginUseCase>()(LoginUSeCaseParams(
      name: loginNameController.text,
      password: loginPasswordController.text,
    ));
    response.fold(
      (l){
       errorStateHandler(l);
      },
          (r) {
        userModel = r;
        print(userModel?.accessToken??"null");
        navigateTo(BnbScreen(),removeAll: true);
        showToast(msg: "تم تسجيل الدخول بنجاح".tr());
      },
    );
    emit(AuthInitial());
  }

  void register() async {
    emit(LoadingState());
    final response = await getIt<RegisterUseCase>()(RegisterUSeCaseParams(
      name: registerNameController.text,
      password: registerPassController.text,
      passwordConfirmation:registerPassController.text ,
      email:registerEmailController.text,
    ));
    response.fold(
      (l){
        globalAlertDialogue("البريد الالكتروني موجود مسبقا لدينا ",);
      },
          (r) {
        userModel = r;
        print(userModel?.accessToken??"null");
        navigateTo(BnbScreen(),removeAll: true);
        showToast(msg: "تم انشاء الحساب بنجاح".tr());
      },
    );
    emit(AuthInitial());
  }

}
