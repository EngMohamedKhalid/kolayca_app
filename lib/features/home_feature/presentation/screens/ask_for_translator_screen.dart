import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/image_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/utils/consts.dart';
import '../../../../app/widgets/text_widget.dart';
import '../../../../app/widgets/video_player_widget.dart';

class AskForTranslatorScreen extends StatelessWidget {
  const AskForTranslatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "askForTranslator".tr(),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        children: [
          TextWidget(
            title: "location".tr(),
            titleSize: 36.sp,
            titleFontWeight: FontWeight.w400,
            titleColor: AppColors.mainColor,
          ),
          ImageWidget(
              imageUrl: "assets/images/location.png",
            width: double.infinity,
            height: 300.h,
            fit: BoxFit.fill,
          ),
          30.verticalSpace,
          TextWidget(
            title: "askForTranslatorBody".tr(),
            titleSize: 20.sp,
            titleFontWeight: FontWeight.w400,
            titleColor: AppColors.mainColor,
            titleMaxLines: 10,
          ),
          50.verticalSpace,
          ImageWidget(
            imageUrl: "assets/images/soon.png",
            width: double.infinity,
            height: 172.h,
            // fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
