import '../../../../app/network/network_manager.dart';
import '../../../../app/utils/hanlders/remote_data_source_handler.dart';
import '../models/categorey_model.dart';
import '../models/slider_image.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoreyModel>> getCategories();
  Future<List<SliderModel>> getSliders();
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
}