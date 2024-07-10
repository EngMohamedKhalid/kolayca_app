import 'dart:io';

import 'package:dartz/dartz.dart';
import '../../../../app/error/failures.dart';
import '../../data/models/user_model.dart';

abstract  class AuthRepo{
  Future<Either<Failure, AllUserModel>>login(Map<String,String> map);
  Future<Either<Failure, AllUserModel>>register(Map<String,String> map);
  Future<Either<Failure, UserModel>>getProfile();
  Future<Either<Failure, AllUserModel>>updateProfile(Map<String,String> map,Map<String, File> files);
  Future<Either<Failure, String>>verifyOtp(Map<String,String> map);
  Future<Either<Failure, String>>resendOtp(Map<String,String> map);
  Future<Either<Failure, void>>resetPassword(Map<String,String> map);
  // Future<Either<Failure, List<Specialization>>>getSpecialization();
}