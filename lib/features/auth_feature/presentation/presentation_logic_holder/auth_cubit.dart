
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final loginEmailController = TextEditingController();
  final otpEmailController = TextEditingController();
  final otpController = TextEditingController();
  final resetPassController = TextEditingController();
  final resetPassConfirmController = TextEditingController();
  /////////// REGISTER CONTROLLERS/////////////
  final registerNameController = TextEditingController();
  final registerEmailController = TextEditingController();
  final registerPhoneController = TextEditingController();
  final registerPassController = TextEditingController();
  final registerPassConfirmController = TextEditingController();
  String countryName= "Egypt";
  String  dailCode = "20";
  String  countryCode = "EG";
  String ? specializationId;
  //////////////////////////////////
  bool passObscure = true;
  bool passConfObscure = true;
  String ? errorMsg;

  List<Specialization>? specializations;
  List<String> specializationsNames = [];

  void changeData({required String dail,required String name,required String code}){
    emit(LoadingState());
    dailCode = dail;
    countryCode = code;
    countryName = name;
    emit(AuthInitial());
  }

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
      email: loginEmailController.text,
      password: loginPasswordController.text,
      platform:Platform.isAndroid? "android" : "ios"
    ));
    response.fold(
      (l){
        errorMsg = l.cause.toString();
        print(errorMsg);
        print("========================");
      },
          (r) {
      print(r.token??"token");
      print(r.user?.email??"email");
        // navigateTo(const BNBScreen(), removeAll: true);
      //loginEmailController.clear();
      loginPasswordController.clear();
      errorMsg=null;
      },
    );
    emit(AuthInitial());
  }

}
