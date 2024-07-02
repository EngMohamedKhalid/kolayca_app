// import 'package:american_board/app/utils/helper.dart';
// import 'package:american_board/app/widgets/button_widget.dart';
// import 'package:american_board/app/widgets/image_widget.dart';
// import 'package:american_board/app/widgets/text_widget.dart';
// import 'package:american_board/features/auth_feature/presentation/screens/login_screen.dart';
// import 'package:american_board/features/bottom_navigation_feature/presentation/screens/bottom_navigation_screen.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../app/utils/app_colors.dart';
// import '../../../../app/widgets/default_app_bar_widget.dart';
//
// class SuccessScreen extends StatelessWidget {
//   const SuccessScreen({super.key,  this.fromResetPassword= true});
//   final bool fromResetPassword ;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const DefaultAppBarWidget(
//         canBack: false,
//       ),
//       body:  ListView(
//         children: [
//            ImageWidget(
//              imageUrl: "assets/images/success.png",
//              width: 130.w,
//              height: 130.h,
//            ),
//           16.verticalSpace,
//           TextWidget(
//             title :fromResetPassword?"PasswordUpdated".tr():"AccountVerified".tr(),
//               titleSize: 28.sp,
//               titleFontWeight: FontWeight.w600,
//               titleColor: AppColors.mainColor,
//           ),
//           20.verticalSpace,
//          fromResetPassword?
//          ButtonWidget(
//             text: "LetsLogin".tr(),
//             horizontalMargin: 16.w,
//             onPressed: () {
//               navigateTo(const LoginScreen(),removeAll: true);
//             }
//           )
//             :
//          ButtonWidget(
//              text: "BackToProfile".tr(),
//              horizontalMargin: 16.w,
//              onPressed: () {
//                navigateTo(const BNBScreen(),removeAll: true);
//              }
//          )
//       ],
//       )
//     );
//   }
// }
