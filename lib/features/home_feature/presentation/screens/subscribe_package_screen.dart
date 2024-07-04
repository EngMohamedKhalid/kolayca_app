import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';

import '../../../../app/utils/app_colors.dart';
import 'dart:ui' as ui;

class SubscribePackageScreen extends StatelessWidget {
  const SubscribePackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "subscribe".tr(),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: ui.TextDirection.ltr,
        child: ListView.separated(
          itemCount: 10,
          padding: EdgeInsets.all(16.sp),
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 170.sp,
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 50.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffC48145),
                      borderRadius: BorderRadius.circular(32.sp),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                      ]
                  ),
                ),
                Container(
                  height: 150.sp,
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  decoration: BoxDecoration(
                    color: index % 2 == 0 ? const Color(0xffBDD2C4) : const Color(0xffEDCC8F),
                    borderRadius: BorderRadius.circular(16.sp),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        title: "\$499",
                        titleSize: 20.sp,
                        titleColor: AppColors.black,
                        textDecoration: TextDecoration.underline,
                        titleFontWeight: FontWeight.w400,
                      ),
                      RotatedBox(
                        quarterTurns: -1,
                        child: TextWidget(
                          title: "GOLD",
                          titleSize: 20.sp,
                          titleColor: AppColors.black,
                          titleFontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 100.w),
                  padding: EdgeInsets.all(16.sp),
                  height: 170.sp,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextWidget(
                        title: "30 consultation hours",
                        titleSize: 20.sp,
                        titleColor: AppColors.black,
                        titleFontWeight: FontWeight.w400,
                      ),
                      TextWidget(
                        title: "30 templates and 30 images",
                        titleSize: 20.sp,
                        titleColor: AppColors.black,
                        titleFontWeight: FontWeight.w400,
                      ),
                      TextWidget(
                        title: "Unlimited access file",
                        titleSize: 20.sp,
                        titleColor: AppColors.black,
                        titleFontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => 50.verticalSpace,
        ),
      ),
    );
  }
}
