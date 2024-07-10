import 'package:dartz/dartz.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../../data/models/user_model.dart';
import '../../repo/auth_repo.dart';

class GetProfileUseCase implements UseCase<UserModel, NoParams> {
  final AuthRepo repository;

  GetProfileUseCase({required this.repository});

  @override
  Future<Either<Failure, UserModel>> call(NoParams params) async{
    return await repository.getProfile();
  }

}

