import 'package:dartz/dartz.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../../data/models/user_model.dart';
import '../../repo/auth_repo.dart';

class GetAllSpecializationsUseCase implements UseCase<List<Specialization>, NoParams> {
  final AuthRepo repository;

  GetAllSpecializationsUseCase({required this.repository});

  @override
  Future<Either<Failure, List<Specialization>>> call(NoParams params) async{
    return await repository.getSpecialization();
  }

}

