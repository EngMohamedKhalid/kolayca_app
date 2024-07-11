import 'package:dartz/dartz.dart';
import 'package:kolayca_app/features/home_feature/data/models/categorey_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/recorded_lesson_model.dart';
import 'package:kolayca_app/features/home_feature/domain/repo/home_repo.dart';

import '../../../../../app/error/failures.dart';
import '../../../../../app/usecase/usecase.dart';
import '../../data/models/slider_image.dart';

class GetRecordedLessonsUseCase implements UseCase<List<RecordedLessonModel>, NoParams> {
  final HomeRepo repository;

  GetRecordedLessonsUseCase({required this.repository});

  @override
  Future<Either<Failure, List<RecordedLessonModel>>> call(NoParams params) async{
    return await repository.recordedLessons();
  }

}

