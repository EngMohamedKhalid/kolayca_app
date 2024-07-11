import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/utils/app_colors.dart';
import 'package:kolayca_app/app/utils/helper.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';
import 'package:kolayca_app/features/home_feature/presentation/screens/recorded_lesson_screen.dart';
import 'package:kolayca_app/features/home_feature/presentation/screens/subscribe_package_screen.dart';
import 'package:kolayca_app/features/profile_feature/presentation/screens/lang_screen.dart';
import 'package:kolayca_app/features/profile_feature/presentation/screens/requests_screen.dart';

import '../widgets/custom_login_and_verified_widget.dart';
import '../widgets/custom_notification_count_item.dart';
import 'notification_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "profile".tr(),
        centerTitle: true,
        canBack: false,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children:  [
          const CustomLoginAndVerifiedWidget(),
          16.verticalSpace,
          const Divider(
            color: AppColors.grey606060,
          ),
          16.verticalSpace,
          InkWell(
            onTap: () => navigateTo(const NotificationScreen()),
            child: Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(.4), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))],
              ),
              child: Row(
                children: [
                  16.horizontalSpace,
                  TextWidget(
                    title: "notifications".tr(),
                    titleColor: AppColors.mainColor,
                    titleSize: 36.sp,
                    titleFontWeight: FontWeight.w400,
                  ),
                  const Spacer(),
                  const CustomNotificationCountItem()
                ],
              ),
            ),
          ),
          16.verticalSpace,
          InkWell(
            onTap: () => navigateTo(const RequestsScreen()),
            child: Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(.4), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))],
              ),
              child: Row(
                children: [
                  16.horizontalSpace,
                  TextWidget(
                    title: "orders".tr(),
                    titleColor: AppColors.mainColor,
                    titleSize: 36.sp,
                    titleFontWeight: FontWeight.w400,
                  ),
                  const Spacer(),
                  const CustomNotificationCountItem(count: "10",)
                ],
              ),
            ),
          ),
          16.verticalSpace,
          InkWell(
            onTap: () => navigateTo(const RecordedLessonScreen()),
            child: Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(.4), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))],
              ),
              child: Row(
                children: [
                  16.horizontalSpace,
                  TextWidget(
                    title: "recordedLessons".tr(),
                    titleColor: AppColors.mainColor,
                    titleSize: 36.sp,
                    titleFontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          16.verticalSpace,
          InkWell(
            onTap: () => navigateTo(const SubscribePackageScreen()),
            child: Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(.4), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))],
              ),
              child: Row(
                children: [
                  16.horizontalSpace,
                  TextWidget(
                    title: "subscribe".tr(),
                    titleColor: AppColors.mainColor,
                    titleSize: 36.sp,
                    titleFontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          16.verticalSpace,
          InkWell(
            onTap: (){
              navigateTo(const LanguageScreen());
            },
            child: Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(.4), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))],
              ),
              child: Row(
                children: [
                  16.horizontalSpace,
                  TextWidget(
                    title: "language".tr(),
                    titleColor: AppColors.mainColor,
                    titleSize: 36.sp,
                    titleFontWeight: FontWeight.w400,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.language,
                    color: AppColors.mainColor,
                    size: 50.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
