import 'package:dartz/dartz.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../../data/models/user_model.dart';
import '../../repo/auth_repo.dart';

class LoginUseCase implements UseCase<UserModel, LoginUSeCaseParams> {
  final AuthRepo repository;

  LoginUseCase({required this.repository});

  @override
  Future<Either<Failure, UserModel>> call(LoginUSeCaseParams params) async{
    return await repository.login(params.toMap());
  }

}

class LoginUSeCaseParams {
  final String email;
  final String password;
  final String platform;

  LoginUSeCaseParams(
      {
        required this.email,
        required this.password,
        required this.platform,
      });

  Map<String, String> toMap() {
    final map = {
      "email": email,
      "password": password,
      "platform": platform,
    };
    return map;
  }
}
