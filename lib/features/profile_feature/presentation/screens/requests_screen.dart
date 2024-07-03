import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/image_widget.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';

import '../../../../app/utils/app_colors.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "orders".tr(),
      ),
      body: ListView.separated(
        itemCount: 15,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(16.sp),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(.4), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))],
            ),
            child: Row(
              children: [
                ImageWidget(
                  imageUrl: "https://media.istockphoto.com/id/183069315/vector/businesswoman.jpg?s=2048x2048&w=is&k=20&c=vpMAL7ASOVnd3UsdFMlfUhSLXRiD5wu6mEb5N95Hfgc=",
                  width: 55.w,
                  height: 55.h,
                ),
                8.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        title: "Maretha",
                        titleColor: AppColors.black,
                        titleSize: 20.sp,
                        titleFontWeight: FontWeight.w400,
                      ),
                      10.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            title: "Ok i will check it",
                            titleColor: AppColors.grey606060,
                            titleSize: 16.sp,
                            titleFontWeight: FontWeight.w400,
                          ),
                          TextWidget(
                            title: "08.45",
                            titleColor: AppColors.grey606060,
                            titleSize: 16.sp,
                            titleFontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return 16.verticalSpace;
        },
      ),
    );
  }
}
