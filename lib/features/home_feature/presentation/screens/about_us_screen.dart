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

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "aboutUs".tr(),
        centerTitle: true,
        canBack: false,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        children: [
          ImageWidget(
              imageUrl: "assets/images/about.png",
            width: 254.w,
            height: 82.h,
          ),
          53.verticalSpace,
          TextWidget(
              title: "aboutUsText".tr(),
              titleSize: 36.sp,
              titleFontWeight: FontWeight.w400,
              titleColor: AppColors.mainColor,
          ),
          30.verticalSpace,
          TextWidget(
              title: "aboutUsBody".tr(),
              titleSize: 20.sp,
              titleFontWeight: FontWeight.w400,
              titleColor: AppColors.mainColor,
            titleMaxLines: 10,
          ),
          26.verticalSpace,
          const VideoPlayerWidget(),
          30.verticalSpace,
          TextWidget(
            title: "followUs".tr(),
            titleSize: 18.sp,
            titleFontWeight: FontWeight.w400,
            titleColor: AppColors.mainColor,
            titleMaxLines: 10,
          ),
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageWidget(
                  imageUrl: "assets/images/tik.png",
                width: 50.w,
                height: 50.h,
              ),
              ImageWidget(
                  imageUrl: "assets/images/face.png",
                width: 50.w,
                height: 50.h,
              ),
              ImageWidget(
                  imageUrl: "assets/images/insta.png",
                width: 60.w,
                height: 60.h,
              ),
              ImageWidget(
                  imageUrl: "assets/images/snap.png",
                width: 50.w,
                height: 50.h,
              ),
            ],
          ),
          16.verticalSpace,
          InkWell(
            onTap: (){
              urlLaunch( url: 'https://kolaycakonus.com/');
            },
            child: TextWidget(
              title: "https://kolaycakonus.com/",
              titleSize: 20.sp,
              titleFontWeight: FontWeight.w400,
              titleColor: AppColors.mainColor,
              titleMaxLines: 10,
              textDecoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
