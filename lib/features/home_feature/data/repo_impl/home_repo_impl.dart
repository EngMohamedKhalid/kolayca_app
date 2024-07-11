import 'package:dartz/dartz.dart';
import 'package:kolayca_app/app/error/failures.dart';
import 'package:kolayca_app/features/home_feature/data/data_source/home_remote_data_source.dart';
import 'package:kolayca_app/features/home_feature/data/models/categorey_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/live_trans_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/recorded_lesson_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/slider_image.dart';
import 'package:kolayca_app/features/home_feature/data/models/subscribe_package_model.dart';
import 'package:kolayca_app/features/home_feature/domain/repo/home_repo.dart';

import '../../../../app/network/network_info.dart';
import '../../../../app/utils/hanlders/repo_impl_callhandler.dart';

class HomeRepoImpl extends HomeRepo{
  final HomeRemoteDataSource homeRemoteDataSource;
  final NetworkInfo networkInfo;

  HomeRepoImpl({required this.homeRemoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, List<CategoreyModel>>> getCategories() async {
    return await RepoImplCallHandler<List<CategoreyModel>>(networkInfo)(() async {
      return await homeRemoteDataSource.getCategories();
    });
  }

  @override
  Future<Either<Failure, List<SliderModel>>> getSliders()  async {
    return await RepoImplCallHandler<List<SliderModel>>(networkInfo)(() async {
      return await homeRemoteDataSource.getSliders();
    });
  }

  @override
  Future<Either<Failure, List<RecordedLessonModel>>> recordedLessons()async {
    return await RepoImplCallHandler<List<RecordedLessonModel>>(networkInfo)(() async {
      return await homeRemoteDataSource.recordedLessons();
    });
  }

  @override
  Future<Either<Failure, List<SubscribePackageModel>>> getPackages() async {
    return await RepoImplCallHandler<List<SubscribePackageModel>>(networkInfo)(() async {
      return await homeRemoteDataSource.subscribePackages();
    });
  }

  @override
  Future<Either<Failure, List<LiveTransModel>>> getLiveTrans() async {
    return await RepoImplCallHandler<List<LiveTransModel>>(networkInfo)(() async {
      return await homeRemoteDataSource.getLiveTrans();
    });
  }
}