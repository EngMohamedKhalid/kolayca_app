import 'package:dartz/dartz.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../../data/models/user_model.dart';
import '../../repo/auth_repo.dart';

class RegisterUseCase implements UseCase<AllUserModel, RegisterUSeCaseParams> {
  final AuthRepo repository;

  RegisterUseCase({required this.repository});

  @override
  Future<Either<Failure, AllUserModel>> call(RegisterUSeCaseParams params) async{
    return await repository.register(params.toMap());
  }

}


class RegisterUSeCaseParams {
  final String email;
  final String password;
  final String passwordConfirmation;
  final String name;

  RegisterUSeCaseParams(
      {
        required this.email,
        required this.password,
        required this.name,
        required this.passwordConfirmation,
      });

  Map<String, String> toMap() {
    final map = {
      "email": email,
      "name": name,
      "password": password,
      "confirm_password": passwordConfirmation,
    };
    return map;
  }
}
