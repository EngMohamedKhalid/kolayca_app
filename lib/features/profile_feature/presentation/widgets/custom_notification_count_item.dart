import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/widgets/text_widget.dart';

class CustomNotificationCountItem extends StatelessWidget {
  const CustomNotificationCountItem({super.key, this.count});
final String ? count ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Icons.notifications,
          color: AppColors.mainColor,
          size: 50.sp,
        ),
        Container(
          width: 25.w,
          height: 25.h,
          decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle
          ),
          child: TextWidget(
            title: count ?? "1",
            titleColor: AppColors.white,
            titleSize: 20.sp,
            titleFontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
