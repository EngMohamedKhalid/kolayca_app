import 'package:dartz/dartz.dart';
import 'package:kolayca_app/features/home_feature/data/models/categorey_model.dart';
import 'package:kolayca_app/features/home_feature/domain/repo/home_repo.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../data/models/slider_image.dart';

class GetHomeCategoriesUseCase implements UseCase<List<CategoreyModel>, NoParams> {
  final HomeRepo repository;

  GetHomeCategoriesUseCase({required this.repository});

  @override
  Future<Either<Failure, List<CategoreyModel>>> call(NoParams params) async{
    return await repository.getCategories();
  }

}

