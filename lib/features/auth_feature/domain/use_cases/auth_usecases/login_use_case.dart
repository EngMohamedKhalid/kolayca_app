import 'package:dartz/dartz.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../../data/models/user_model.dart';
import '../../repo/auth_repo.dart';

class LoginUseCase implements UseCase<AllUserModel, LoginUSeCaseParams> {
  final AuthRepo repository;

  LoginUseCase({required this.repository});

  @override
  Future<Either<Failure, AllUserModel>> call(LoginUSeCaseParams params) async{
    return await repository.login(params.toMap());
  }

}

class LoginUSeCaseParams {
  final String name;
  final String password;

  LoginUSeCaseParams(
      {
        required this.name,
        required this.password,
      });

  Map<String, String> toMap() {
    final map = {
      "name": name,
      "password": password,
    };
    return map;
  }
}
