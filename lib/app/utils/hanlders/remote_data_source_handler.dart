import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';
import '../../../features/auth_feature/data/models/user_model.dart';
import '../../../features/auth_feature/presentation/screens/login_screen.dart';
import '../../error/exceptions.dart';
import '../../model/global_response_model.dart';
import '../../services/cache_service.dart';
import '../get_it_injection.dart';
import '../helper.dart';

class RemoteDataSourceCallHandler {
  RemoteDataSourceCallHandler();

  Future<dynamic> call(Response res,) async {
    GlobalResponseModel response ;
    if (res.statusCode >= 200 || res.statusCode <= 299) {
      response = GlobalResponseModel.fromJson(res.body.toString());
        if(response.success==false){
        throw ServerException(response.msg??"unknown Error");
      }
      else{
        if(response.data is List){
          if(response.data.isEmpty&&(response.msg?.isNotEmpty??false)){
            return response.msg??"";
          }
        }
      }
      return response.data ??{};
    } else if(res.statusCode==401){
      response = GlobalResponseModel.fromJson(res.body.toString());
      throw ServerException(response.msg??"unknown Error");
    } else {
      throw ServerException("unknown error ${(json.decode(res.body.toString()) as Map<String, dynamic>)['message']}");
    }
  }

  Future<GlobalResponseModel> handleFormData(StreamedResponse res,) async {
    log(res.statusCode.toString(),name: "status code");
    String responseData = await res.stream.bytesToString();
    log(responseData,name: "response body");
    if (res.statusCode >= 200 || res.statusCode <= 299) {
      final response = GlobalResponseModel.fromJson(responseData);
      if(response.authError==true){
        await getIt<CacheService>().clear();
        //todo handel login screen
        navigateTo(const LoginScreen(),removeAll: true);
        throw ServerException(response.msg ?? "unknown Error");
      }
      else if(response.success==false) {
        if(response.key=="needActive"){
          throw AuthException(response.msg??"unknown Error",user:UserModel.fromJson(response.data['user']));
        }
        throw ServerException(response.msg ?? "unknown Error");
      }
      return response;
    } else if(res.statusCode==401){
      final response = GlobalResponseModel.fromJson(responseData);
      throw ServerException(response.msg ?? "unknown Error");
    } else {
      final response = GlobalResponseModel.fromJson(responseData);
      throw ServerException("unknown error${response.msg}");
    }
  }
}
