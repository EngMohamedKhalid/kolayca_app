import 'package:dartz/dartz.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../../data/models/user_model.dart';
import '../../repo/auth_repo.dart';

class VerifyOtpUseCase implements UseCase<String, VerifyOtpUseCaseParams> {
  final AuthRepo repository;

  VerifyOtpUseCase({required this.repository});

  @override
  Future<Either<Failure, String>> call(VerifyOtpUseCaseParams params) async{
    return await repository.verifyOtp(params.toMap());
  }

}


class VerifyOtpUseCaseParams {
  final String email;
  final String otp;

  VerifyOtpUseCaseParams(
      {
        required this.email,
        required this.otp,
      });

  Map<String, String> toMap() {
    final map = {
      "email": email,
      "otp": otp,
    };
    return map;
  }
}
