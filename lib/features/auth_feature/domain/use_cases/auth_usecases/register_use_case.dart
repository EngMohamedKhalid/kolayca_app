import 'package:dartz/dartz.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../../data/models/user_model.dart';
import '../../repo/auth_repo.dart';

class RegisterUseCase implements UseCase<String, RegisterUSeCaseParams> {
  final AuthRepo repository;

  RegisterUseCase({required this.repository});

  @override
  Future<Either<Failure, String>> call(RegisterUSeCaseParams params) async{
    return await repository.register(params.toMap());
  }

}


class RegisterUSeCaseParams {
  final String email;
  final String password;
  final String countryName;
  final String passwordConfirmation;
  final String platform;
  final String countryCode;
  final String dialCode;
  final String phone;
  final String specializationId;
  final String name;

  RegisterUSeCaseParams(
      {
        required this.email,
        required this.specializationId,
        required this.password,
        required this.dialCode,
        required this.countryName,
        required this.countryCode,
        required this.name,
        required this.phone,
        required this.passwordConfirmation,
        required this.platform,
      });

  Map<String, String> toMap() {
    final map = {
      "email": email,
      "name": name,
      "country_name": countryName,
      "phone": phone,
      "password": password,
      "specialization_id": specializationId,
      "dialcode": dialCode,
      "country_code": countryCode,
      "password_confirmation": passwordConfirmation,
      "platform": platform,
    };
    return map;
  }
}
