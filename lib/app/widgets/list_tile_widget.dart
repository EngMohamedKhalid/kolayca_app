import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors.dart';
import '../utils/app_fonts.dart';
import 'image_widget.dart';
import 'text_widget.dart';

class ListTileWidget extends StatelessWidget {
  final void Function() onTap;
  final IconData? icon;
  final bool trailingIcon;
  final Widget? trailing;
  final String title;
  final String imageUrl;
  final Color? tralingColor;
  final Color? textColor;
  final Color? iconColor;
  final Color? imageColor;
  final bool arrowIcon;
  final bool image;
  final bool paymentIcon;

  const ListTileWidget({
    super.key,
    required this.onTap,
     this.icon,
     this.trailingIcon=false,
    this.tralingColor,
    this.arrowIcon = true, required this.title, this.textColor, this.iconColor, this.image= false,  this.imageUrl="", this.trailing, this.imageColor,this.paymentIcon= false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: AppColors.grey8080),
        // borderRadius: BorderRadius.circular(10),
      ),
      height: 30.h,
      child: ListTile(
        //tileColor: AppColors.grey8080,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
        onTap: onTap,
        minLeadingWidth: 8.w,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
        dense: true,
        leading:paymentIcon?
            ImageWidget(
                imageUrl: imageUrl,
              width: 24.w,
              height: 24.h,
              //color:imageColor?? AppColors.grey636C76,
            )
            :
        ImageWidget(
          imageUrl: imageUrl,
          width: 24.w,
          height: 24.h,
          color:imageColor?? AppColors.grey636C76,
        ),
        title: TextWidget(
          title: title,
          titleSize: 16.sp,
          titleFontWeight: FontWeight.w500,
          titleColor:textColor??AppColors.primary353F4A,
          titleAlign: TextAlign.start,
        ),
        trailing:trailingIcon? Icon(
          Icons.arrow_forward_ios,
          color:tralingColor?? AppColors.greyD0D7DE,
          size: 18.sp,
        ):trailing,

      ),
    );
  }
}
