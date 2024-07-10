import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/features/auth_feature/presentation/presentation_logic_holder/auth_cubit.dart';

import '../../../../app/services/cache_service.dart';
import '../../../../app/utils/app_assets.dart';
import '../../../../app/utils/app_colors.dart';
import '../../../../app/utils/get_it_injection.dart';
import '../../../../app/utils/helper.dart';
import '../../../../app/widgets/image_widget.dart';
import '../../../../app/widgets/text_widget.dart';
import '../screens/edit_profile_screen.dart';

class CustomLoginAndVerifiedWidget extends StatelessWidget {
  const CustomLoginAndVerifiedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            8.verticalSpace,
            Row(
              children: [
                TextWidget(
                  title:getIt<CacheService>().getUserData()?.name??AuthCubit.get().editEmailController.text,
                  titleColor: AppColors.mainColor,
                  titleSize: 30.sp,
                  titleFontWeight: FontWeight.w600,
                ),
                5.horizontalSpace,
                ImageWidget(
                  imageUrl:"assets/images/Verifed.png",
                  width: 45.w,
                  height: 45.w,
                ),
              ],
            ),
             8.verticalSpace,
            Row(
              children: [
                TextWidget(
                  title:getIt<CacheService>().getUserData()?.email??AuthCubit.get().editEmailController.text,
                  titleColor: AppColors.mainColor,
                  titleSize: 22.sp,
                  titleFontWeight: FontWeight.w500,
                ),
                // 4.horizontalSpace,
                // TextWidget(
                //   title:"\u2022",
                //   titleColor: AppColors.greyD9D9E3,
                //   titleSize: 14.sp,
                //   titleFontWeight: FontWeight.w500,
                // ),
                // 4.horizontalSpace,
                // TextWidget(
                //   title:getIt<CacheService>().getUserData()?.user?.countryName ??"",
                //   titleColor: AppColors.primary353F4A,
                //   titleSize: 14.sp,
                //   titleFontWeight: FontWeight.w500,
                // ),
              ],
            ),
            16.verticalSpace
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            navigateTo(const EditProfileScreen());
          },
          child: ImageWidget(
            imageUrl:AppAssets.edit ,
            width: 30.w,
            height: 30.w,
          ),
        ),
      ],
    );
  }
}
