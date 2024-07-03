import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/utils/app_colors.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';

import '../widgets/custom_login_and_verified_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "profile".tr(),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children:  [
          CustomLoginAndVerifiedWidget(),
          16.verticalSpace,
          Divider(
            color: AppColors.grey606060,
          ),
          16.verticalSpace,
          Container(
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
                Spacer(),
                Icon(
                  Icons.notifications,
                  color: AppColors.mainColor,
                  size: 40.sp,
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
