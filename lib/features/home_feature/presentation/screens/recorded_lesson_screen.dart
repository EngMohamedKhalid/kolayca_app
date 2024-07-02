import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/image_widget.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';
import 'package:kolayca_app/features/home_feature/presentation/widgets/custom_home_item.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/widgets/video_player_widget.dart';

class RecordedLessonScreen extends StatelessWidget {
  const RecordedLessonScreen({super.key});
//دروس اللغه التركية مسجلة
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "recordedLessons".tr(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ImageWidget(
            imageUrl: "assets/images/home.png",
            width: double.infinity,
            height: 300.h,
            fit: BoxFit.fill,
          ),
          16.verticalSpace,
          YouTubeVidePlayerWidget(
            "https://www.youtube.com/watch?v=6g4O5UOH304"
          )
          // Expanded(
          //   child: GridView.builder(
          //       itemCount: 20,
          //       padding: EdgeInsets.symmetric(horizontal: 16.w),
          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         crossAxisSpacing: 8,
          //         mainAxisSpacing: 8,
          //       ),
          //       itemBuilder: (context, index) {
          //         return const VideoPlayerWidget();
          //       }
          //   ),
          // )
        ],
      ),
    );
  }
}
