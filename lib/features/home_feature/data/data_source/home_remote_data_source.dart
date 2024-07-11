import '../../../../app/network/network_manager.dart';
import '../../../../app/utils/hanlders/remote_data_source_handler.dart';
import '../models/categorey_model.dart';
import '../models/live_trans_model.dart';
import '../models/recorded_lesson_model.dart';
import '../models/slider_image.dart';
import '../models/subscribe_package_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoreyModel>> getCategories();
  Future<List<SliderModel>> getSliders();
  Future<List<RecordedLessonModel>> recordedLessons();
  Future<List<SubscribePackageModel>> subscribePackages();
  Future<List<LiveTransModel>> getLiveTrans();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final NetworkManager networkManager;
  HomeRemoteDataSourceImpl({required this.networkManager});
  @override
  Future<List<SliderModel>> getSliders() async {
    final res = await networkManager.request(
        endPoint: "sliders",
        method: RequestMethod.get
    );
    final data =  await RemoteDataSourceCallHandler()(res);
    if(data is List){
      return data.map((e) => SliderModel.fromJson(e)).toList();
    }else{
      return [];
    }
  }

  @override
  Future<List<CategoreyModel>> getCategories() async {
    final res = await networkManager.request(
        endPoint: "categories",
        method: RequestMethod.get
    );
    final data =  await RemoteDataSourceCallHandler()(res);
    if(data is List){
      return data.map((e) => CategoreyModel.fromJson(e)).toList();
    }else{
      return [];
    }

  }

  @override
  Future<List<RecordedLessonModel>> recordedLessons() async {
    final res = await networkManager.request(
        endPoint: "recorded-Lessons",
        method: RequestMethod.get
    );
    final data =  await RemoteDataSourceCallHandler()(res);
    if(data is List){
      return data.map((e) => RecordedLessonModel.fromJson(e)).toList();
    }else{
      return [];
    }

  }

  @override
  Future<List<SubscribePackageModel>> subscribePackages()async {
    final res = await networkManager.request(
        endPoint: "packages",
        method: RequestMethod.get
    );
    final data =  await RemoteDataSourceCallHandler()(res);
    if(data is List){
      return data.map((e) => SubscribePackageModel.fromJson(e)).toList();
    }else{
      return [];
    }

  }

  @override
  Future<List<LiveTransModel>> getLiveTrans() async {
    final res = await networkManager.request(
        endPoint: "liveTranslater",
        method: RequestMethod.get
    );
    final data =  await RemoteDataSourceCallHandler()(res);
    if(data is List){
      return data.map((e) => LiveTransModel.fromJson(e)).toList();
    }else{
      return [];
    }

  }
}