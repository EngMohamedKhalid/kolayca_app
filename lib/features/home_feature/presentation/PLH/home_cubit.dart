import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kolayca_app/app/usecase/usecase.dart';
import 'package:kolayca_app/app/utils/get_it_injection.dart';
import 'package:kolayca_app/app/utils/hanlders/error_state_handler.dart';
import 'package:kolayca_app/app/utils/navigation_helper.dart';
import 'package:kolayca_app/features/home_feature/data/models/categorey_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/live_trans_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/recorded_lesson_model.dart';
import 'package:kolayca_app/features/home_feature/data/models/subscribe_package_model.dart';
import 'package:kolayca_app/features/home_feature/domain/use_cases/get_home_categories_use_case.dart';
import 'package:kolayca_app/features/home_feature/domain/use_cases/get_live_translator_use_case.dart';
import 'package:kolayca_app/features/home_feature/domain/use_cases/get_package_use_case.dart';
import 'package:kolayca_app/features/home_feature/domain/use_cases/get_recorded_lessons_use_case.dart';
import 'package:kolayca_app/features/home_feature/domain/use_cases/get_sliders_use_case.dart';

import '../../data/models/slider_image.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get() => BlocProvider.of<HomeCubit>(getIt<NavHelper>().navigatorKey.currentContext!);
  List<CategoreyModel>? categories ;
  List<SliderModel> ?sliders ;
  List<RecordedLessonModel> ?recordedLessons ;
  List<SubscribePackageModel> ?packages ;
  List<LiveTransModel> ?liveTranslators ;


void getCategories() async {
    emit(HomeLoading());
    final res = await getIt<GetHomeCategoriesUseCase>()(NoParams());
    res.fold(
      (l) {
        errorStateHandler(l);
      },
      (r){
        categories = r;
        print(categories?.length??"no data found");
      },
    );
    emit(HomeInitial());

  }
void getSliders() async {
    emit(HomeSlidersLoading());
    final res = await getIt<GetSlidersUseCase>()(NoParams());
    res.fold(
      (l) {
        errorStateHandler(l);
      },
      (r){
        sliders = r;
        print(sliders?.length??"no data found");
      },
    );
    emit(HomeInitial());

  }
void getRecordedLessons() async {
    emit(HomeLoading());
    final res = await getIt<GetRecordedLessonsUseCase>()(NoParams());
    res.fold(
      (l) {
        errorStateHandler(l);
      },
      (r){
        recordedLessons = r;
        print(recordedLessons?.length??"no data found");
      },
    );
    emit(HomeInitial());

  }

void getPackages() async {
    emit(HomeLoading());
    final res = await getIt<GetPackageUseCase>()(NoParams());
    res.fold(
      (l) {
        errorStateHandler(l);
      },
      (r){
        packages = r;
        print(packages?.length??"no data found");
      },
    );
    emit(HomeInitial());

  }
void getLiveTranslators() async {
    emit(HomeLoading());
    final res = await getIt<GetLiveTranslatorUseCase>()(NoParams());
    res.fold(
      (l) {
        errorStateHandler(l);
      },
      (r){
        liveTranslators = r;
        print(liveTranslators?.length??"no data found");
      },
    );
    emit(HomeInitial());

  }

}
