// import 'package:american_board/features/auth_feature/presentation/screens/register_screen.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../app/utils/app_assets.dart';
// import '../../../../app/utils/app_colors.dart';
// import '../../../../app/utils/helper.dart';
// import '../../../../app/widgets/button_widget.dart';
// import '../../../../app/widgets/image_widget.dart';
// import '../../../../app/widgets/text_button_widget.dart';
// import '../../../../app/widgets/text_widget.dart';
// import 'login_screen.dart';
//
// class ChooseCreateAccountScreen extends StatelessWidget {
//   const ChooseCreateAccountScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: EdgeInsets.symmetric(horizontal: 21.sp, vertical: 52),
//         children: [
//           ImageWidget(
//             imageUrl: AppImages.appLogo,
//             width: 75.w,
//             height: 75.h,
//           ),
//           10.verticalSpace,
//           TextWidget(
//             title: "CreateAccount".tr(),
//             titleSize: 32.sp,
//             titleColor: AppColors.mainColor,
//             titleFontWeight: FontWeight.w600,
//           ),
//           8.verticalSpace,
//           TextWidget(
//             title: "joinTheBoard".tr(),
//             titleSize: 16.sp,
//             titleColor: AppColors.grey605E5E,
//             titleFontWeight: FontWeight.w400,
//           ),
//           45.verticalSpace,
//           ButtonWidget(
//             onPressed: () {
//
//             },
//             text: "apple".tr(),
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             border: Border.all(
//               color: AppColors.greyD0D7DE,
//               width: 1.sp,
//             ),
//             outlined: false,
//             textColor: AppColors.mainColor,
//             color: Colors.transparent,
//             icon: Icon(
//               Icons.apple,
//               color: AppColors.mainColor,
//               size: 25.sp,
//             ),
//           ),
//           24.verticalSpace,
//           ButtonWidget(
//             onPressed: () {
//
//             },
//             text: "google".tr(),
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             border: Border.all(
//               color: AppColors.greyD0D7DE,
//               width: 1.sp,
//             ),
//             outlined: false,
//             textColor: AppColors.mainColor,
//             color: Colors.transparent,
//             icon: ImageWidget(
//               imageUrl: "assets/images/google.png",
//               width: 25.sp,
//               height: 25.sp,
//             ),
//           ),
//           24.verticalSpace,
//           ButtonWidget(
//             onPressed: () {
//
//             },
//             text: "facebook".tr(),
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             border: Border.all(
//               color: AppColors.greyD0D7DE,
//               width: 1.sp,
//             ),
//             outlined: false,
//             textColor: AppColors.mainColor,
//             color: Colors.transparent,
//             icon: ImageWidget(
//               imageUrl: "assets/images/face.png",
//               width: 25.sp,
//               height: 25.sp,
//             ),
//           ),
//           24.verticalSpace,
//           ButtonWidget(
//             onPressed: () {
//               navigateTo(FirstRegisterScreen());
//             },
//             text: "continueWithEmail".tr(),
//             border: Border.all(
//               color: AppColors.greyD0D7DE,
//               width: 1.sp,
//             ),
//             outlined: false,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             textColor: AppColors.mainColor,
//             color: Colors.transparent,
//             icon: ImageWidget(
//               imageUrl: "assets/images/email.png",
//               width: 25.sp,
//               height: 25.sp,
//             ),
//           ),
//           227.verticalSpace,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextWidget(
//                 title: "AlreadyHaveAccount".tr(),
//                 titleSize: 14.sp,
//                 titleColor: AppColors.grey605E5E,
//                 titleFontWeight: FontWeight.w400,
//               ),
//               5.horizontalSpace,
//               CustomTextButton(
//                 onPressed: () {
//                   navigateTo(LoginScreen(),replace: true);
//                 },
//                 title: "login".tr(),
//                 titleColor: AppColors.mainColor,
//                 titleFontWeight: FontWeight.w500,
//                 titleSize: 14.sp,
//               ),
//             ],
//           ),
//           16.verticalSpace,
//           ]
//       )
//     );
//   }
// }
