import 'package:dartz/dartz.dart';
import 'package:kolayca_app/features/home_feature/data/models/categorey_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/live_trans_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/recorded_lesson_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/slider_image.dart';
import 'package:kolayca_app/features/home_feature/data/models/subscribe_package_model.dart';

import '../../../../app/error/failures.dart';

abstract class HomeRepo{
  Future<Either<Failure, List<CategoreyModel>>> getCategories();
  Future<Either<Failure, List<SliderModel>>> getSliders();
  Future<Either<Failure, List<RecordedLessonModel>>> recordedLessons();
  Future<Either<Failure, List<SubscribePackageModel>>> getPackages();
  Future<Either<Failure, List<LiveTransModel>>> getLiveTrans();
}