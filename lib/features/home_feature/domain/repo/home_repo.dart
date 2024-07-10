import 'package:dartz/dartz.dart';
import 'package:kolayca_app/features/home_feature/data/models/categorey_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/slider_image.dart';

import '../../../../app/error/failures.dart';

abstract class HomeRepo{
  Future<Either<Failure, List<CategoreyModel>>> getCategories();
  Future<Either<Failure, List<SliderModel>>> getSliders();
}