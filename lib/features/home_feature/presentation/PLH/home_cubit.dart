import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kolayca_app/app/usecase/usecase.dart';
import 'package:kolayca_app/app/utils/get_it_injection.dart';
import 'package:kolayca_app/app/utils/hanlders/error_state_handler.dart';
import 'package:kolayca_app/app/utils/navigation_helper.dart';
import 'package:kolayca_app/features/home_feature/data/models/categorey_model.dart';
import 'package:kolayca_app/features/home_feature/domain/use_cases/get_home_categories_use_case.dart';
import 'package:kolayca_app/features/home_feature/domain/use_cases/get_sliders_use_case.dart';

import '../../data/models/slider_image.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get() => BlocProvider.of<HomeCubit>(getIt<NavHelper>().navigatorKey.currentContext!);
  List<CategoreyModel>? categories ;
  List<SliderModel> ?sliders ;


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

}
