import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kolayca_app/features/auth_feature/data/models/user_model.dart';
import 'package:kolayca_app/features/auth_feature/domain/repo/auth_repo.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';

class UpdateProfileUseCase implements UseCase<AllUserModel, UpdateProfileUseCaseParams> {
  final AuthRepo repository;

  UpdateProfileUseCase({required this.repository});

  @override
  Future<Either<Failure, AllUserModel>> call(UpdateProfileUseCaseParams params) async{
    return await repository.updateProfile(params.toMap() as Map<String,String>,params.files());
  }
}

class UpdateProfileUseCaseParams {
  final String? name;
  final String? phone;
  final String? email;
  final String? newPassword;
  final File? image;
  UpdateProfileUseCaseParams(
      {
        this.name,
        this.phone,
        this.email,
        this.image,
        this.newPassword,
      });

  Map<String, dynamic> toMap() {
    final map = {
      if(name!=null)"name": name!,
      if(phone!=null)"mobile": phone!,
      if(email!=null)"email": email!,
      if(newPassword!=null)"new_password": newPassword!,
    };
    return map;
  }

  Map<String, File> files() {
    final map = {
      if(image!=null)"image": image!,
    };
    return map;
  }
}
