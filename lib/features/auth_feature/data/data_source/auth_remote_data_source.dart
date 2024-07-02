import 'dart:math';


import '../../../../app/network/network_manager.dart';
import '../../../../app/utils/consts.dart';
import '../../../../app/utils/hanlders/remote_data_source_handler.dart';
import '../models/user_model.dart';


abstract class AuthRemoteDataSource {
  Future<UserModel> login(Map<String, String> map);
  Future<String> register(Map<String, String> map);
  Future<String> verifyOtp(Map<String, String> map);
  Future<String> resendOtp(Map<String, String> map);
  Future<void> resetPassword(Map<String, String> map);
  // Future<DeleteModel> delete();
  Future<List<Specialization>> getSpecialization();

}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final NetworkManager networkManager;

  AuthRemoteDataSourceImpl({required this.networkManager});

  @override
  Future<UserModel> login(Map<String, dynamic> map) async {
    final res = await networkManager.requestWithFormData(
      body: map,
      endPoint: kSignIn,
      method: RequestMethod.post
    );
    final data =  await RemoteDataSourceCallHandler().handleFormData(res);
    return UserModel.fromJson(data.data);
  }

  @override
  Future<String> resendOtp(Map<String, String> map)async {
    final res = await networkManager.request(
      body: map,
      endPoint: kResendOtp,
    );
    final data =  await RemoteDataSourceCallHandler()(res);
    return data;
  }

  @override
  Future<void> resetPassword(Map<String, String> map) async {
    final res = await networkManager.requestWithFormData(
      body: map,
      method: RequestMethod.post,
      endPoint: kResetPassword,
    );
     await RemoteDataSourceCallHandler().handleFormData(res);
  }

  @override
  Future<String> register(Map<String, String> map)  async {
    final res = await networkManager.requestWithFormData(
        body: map,
        endPoint: "user/auth/register",
        method: RequestMethod.post
    );
    final data =  await RemoteDataSourceCallHandler().handleFormData(res);
    return data.msg??"";
  }

  @override
  Future<String> verifyOtp(Map<String, String> map) async {
    final res = await networkManager.requestWithFormData(
        body: map,
        endPoint: "user/auth/otp/verify",
        method: RequestMethod.post
    );
    final data =  await RemoteDataSourceCallHandler().handleFormData(res);
    return data.msg??"";
  }

  @override
  Future<List<Specialization>> getSpecialization()async {
    final res = await networkManager.request(
        endPoint: "general/specializations",
        method: RequestMethod.get
    );
    final data =  await RemoteDataSourceCallHandler()(res);
    List<Specialization> specializations=[];
    if(data is List){
      for (var item in data){
        for (var x in item){
         specializations.add(Specialization.fromJson(x));
        }
      }
    }
    return specializations;
  }


}
