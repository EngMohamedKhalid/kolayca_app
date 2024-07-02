import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/widgets/text_widget.dart';

class CustomRowInstructionItem extends StatelessWidget {
  const CustomRowInstructionItem({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(
          title: "    \u2022",
          titleSize: 12.sp,
          titleColor: AppColors.grey605E5E,
          titleFontWeight: FontWeight.w500,
        ),
        5.horizontalSpace,
        TextWidget(
          title: title.tr(),
          titleSize: 12.sp,
          titleColor: AppColors.grey605E5E,
          titleFontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
