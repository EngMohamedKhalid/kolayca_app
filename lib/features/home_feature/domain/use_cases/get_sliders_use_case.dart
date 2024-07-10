import 'package:dartz/dartz.dart';
import 'package:kolayca_app/features/home_feature/domain/repo/home_repo.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../data/models/slider_image.dart';

class GetSlidersUseCase implements UseCase<List<SliderModel>, NoParams> {
  final HomeRepo repository;

  GetSlidersUseCase({required this.repository});

  @override
  Future<Either<Failure, List<SliderModel>>> call(NoParams params) async{
    return await repository.getSliders();
  }

}

