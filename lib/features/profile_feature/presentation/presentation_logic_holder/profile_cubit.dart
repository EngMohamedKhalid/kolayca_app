
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/services/cache_service.dart';
import '../../../../app/usecase/usecase.dart';
import '../../../../app/utils/get_it_injection.dart';
import '../../../../app/utils/hanlders/error_state_handler.dart';
import '../../../../app/utils/navigation_helper.dart';
import '../../../../app/widgets/custom_alert_dialog.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  static ProfileCubit get() => BlocProvider.of(getIt<NavHelper>().navigatorKey.currentState!.context);

  bool isDarkMode =false;
  bool passObscure = true;
  bool passConfObscure = true;
  final nameCont = TextEditingController();
  final emailCont = TextEditingController();
  final passController = TextEditingController();
  final phoneCont = TextEditingController();
  final passConfirmController = TextEditingController();

  void changeVisible(){
    emit(ProfileLoading());
    passObscure = !passObscure;
    emit(ProfileInitial());
  }

  void changeConfVisible(){
    emit(ProfileLoading());
    passConfObscure = !passConfObscure;
    emit(ProfileInitial());
  }


}
