import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/image_widget.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';

import '../../../../app/utils/app_colors.dart';
class CustomHomeItem extends StatelessWidget {
  const CustomHomeItem({super.key, this.name, this.image});
  final String? name;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 200.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.mainColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]
      ),
      child: Column(
        children: [
          Expanded(
            child: ImageWidget(
              imageUrl: image??"assets/images/img.png",
               width: double.infinity,
              // height: 300.h,
              fit: BoxFit.fill,
            ),
          ),
          10.verticalSpace,
          TextWidget(
            title: name??"تحدث مع الاتراك",
            titleSize: 20.sp,
            titleColor: AppColors.white,
            titleFontWeight: FontWeight.w500,
          ),
          5.verticalSpace
        ],
      ),

    );
  }
}
