
import 'package:data_connection_checker_nulls/data_connection_checker_nulls.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/auth_feature/data/data_source/auth_remote_data_source.dart';
import '../../features/auth_feature/data/repo_impl/auth_repo_impl.dart';
import '../../features/auth_feature/domain/repo/auth_repo.dart';
import '../../features/auth_feature/domain/use_cases/auth_usecases/get-all_specializations_use_case.dart';
import '../../features/auth_feature/domain/use_cases/auth_usecases/login_use_case.dart';
import '../../features/auth_feature/domain/use_cases/auth_usecases/register_use_case.dart';
import '../network/network_info.dart';
import '../network/network_manager.dart';
import '../services/cache_service.dart';
import 'navigation_helper.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // data sources
  getIt.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl(networkManager: getIt()));
  // getIt.registerLazySingleton<ProfileRemoteDataSource>(() => ProfileRemoteDataSourceImpl(networkManager: getIt()));
  // getIt.registerLazySingleton<CoursesRemoteDataSource>(() => CoursesRemoteDataSourceImpl(networkManager: getIt()),);
  // getIt.registerLazySingleton<EventsRemoteDataSource>(() => EventsRemoteDataSourceImpl(networkManager: getIt()),);

  //* Repository
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(authRemoteDataSource: getIt(), networkInfo: getIt()),);
  // getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepoImpl(profileRemoteDataSource: getIt(), networkInfo: getIt()),);
  // getIt.registerLazySingleton<CoursesRepo>(() => CourseRepoImpl( networkInfo: getIt(), coursesRemoteDataSource: getIt()),);
  // getIt.registerLazySingleton<EventsRepo>(() => EventsRepoImpl( networkInfo: getIt(), eventsRemoteDataSource: getIt()),);
  //
  //* Use cases
  _authUseCases();
  _coursesUseCases();
  _profileUseCases();
  _homeUseCase();
  _searchUseCase();
  _notificationsUseCases();


  //! ----------- app -----------
  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(getIt()));
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  getIt.registerLazySingleton<NetworkManager>(() => NetworkManager());
  getIt.registerLazySingleton<DataConnectionChecker>(() => DataConnectionChecker());
  // getIt.registerLazySingleton<FirebaseNotificationService>(() => FirebaseNotificationService(),);
  // getIt.registerLazySingleton<FlutterLocalNotificationService>(() => FlutterLocalNotificationService(),);
  getIt.registerSingleton<NavHelper>(NavHelper());
  getIt.registerSingleton<CacheService>(CacheService());
}

void _authUseCases() {
   getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(repository: getIt()));
   getIt.registerLazySingleton<RegisterUseCase>(() => RegisterUseCase(repository: getIt()));
}


void _profileUseCases() {
  // getIt.registerLazySingleton<FetchUserUseCase>(() => FetchUserUseCase(repository: getIt()));
  // getIt.registerLazySingleton<UpdateUserUseCase>(() => UpdateUserUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetSettingUseCase>(() => GetSettingUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetAllLocationsUseCase>(() => GetAllLocationsUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetBranchesUseCase>(() => GetBranchesUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetServicesUseCase>(() => GetServicesUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetJoinUsUseCase>(() => GetJoinUsUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetExternalServicesUsUseCase>(() => GetExternalServicesUsUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetSubExternalServicesUsUseCase>(() => GetSubExternalServicesUsUseCase(repository: getIt()));
}

void _coursesUseCases() {
  // getIt.registerLazySingleton<GetCourseUseCase>(() => GetCourseUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetLessonsUseCase>(() => GetLessonsUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetHomeCategoryUseCase>(() => GetHomeCategoryUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetMainCategoryUseCase>(() => GetMainCategoryUseCase(repository: getIt()));
  // getIt.registerLazySingleton<ShowCoursesUseCase>(() => ShowCoursesUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetMyCoursesUseCase>(() => GetMyCoursesUseCase(repository: getIt()));
  // getIt.registerLazySingleton<JoinCourseUseCase>(() => JoinCourseUseCase(repository: getIt()));
  // getIt.registerLazySingleton<AddToCompareUseCase>(() => AddToCompareUseCase(repository: getIt()));
  // getIt.registerLazySingleton<FetchCompareUseCase>(() => FetchCompareUseCase(repository: getIt()));
  // getIt.registerLazySingleton<ShowCompareUseCase>(() => ShowCompareUseCase(repository: getIt()));
  // getIt.registerLazySingleton<ShowLessonUseCase>(() => ShowLessonUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetAllCoursesWithSearchUseCase>(() => GetAllCoursesWithSearchUseCase(repository: getIt()));
  // getIt.registerLazySingleton<GetAllCoursesWithCategoryUseCase>(() => GetAllCoursesWithCategoryUseCase(repository: getIt()));
  // getIt.registerLazySingleton<QuizAnswerUseCase>(() => QuizAnswerUseCase(repository: getIt()));
}

void _homeUseCase(){
  // getIt.registerLazySingleton<GetHomeDataUseCase>(() => GetHomeDataUseCase(repository: getIt()));
}
void _searchUseCase(){
  // getIt.registerLazySingleton<SearchProductsUseCase>(() => SearchProductsUseCase(repository: getIt()));
}

void _notificationsUseCases() {

}