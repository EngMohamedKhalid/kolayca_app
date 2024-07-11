import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/utils/helper.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/image_widget.dart';
import 'package:kolayca_app/app/widgets/loading.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';
import 'package:kolayca_app/features/home_feature/presentation/PLH/home_cubit.dart';
import 'package:kolayca_app/features/home_feature/presentation/screens/video_player_screen.dart';
import 'package:kolayca_app/features/home_feature/presentation/widgets/custom_home_item.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/widgets/video_player_widget.dart';

class RecordedLessonScreen extends StatefulWidget {
  const RecordedLessonScreen({super.key});

  @override
  State<RecordedLessonScreen> createState() => _RecordedLessonScreenState();
}

class _RecordedLessonScreenState extends State<RecordedLessonScreen> {
  @override
  void initState() {
    super.initState();
    HomeCubit.get().getRecordedLessons();
  }
//دروس اللغه التركية مسجلة
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "recordedLessons".tr(),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = HomeCubit.get();
          return
          state is HomeLoading?
          const Center(
            child:  Loading(),
          ):
            Column(
            children: [
              ImageWidget(
                imageUrl: "assets/images/lesson.png",
                width: double.infinity,
                height: 300.h,
                fit: BoxFit.fill,
              ),
              16.verticalSpace,

              Expanded(
                child: GridView.builder(
                    itemCount: cubit.recordedLessons?.length ?? 0,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1
                    ),
                    itemBuilder: (context, index) {
                      return VideoPlayerWidget(
                        url: cubit.recordedLessons?[index].linkUrl ?? "",
                      );
                    }
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
