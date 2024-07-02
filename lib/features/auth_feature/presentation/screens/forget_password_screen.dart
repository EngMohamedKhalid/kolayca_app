// import 'package:american_board/app/services/cache_service.dart';
// import 'package:american_board/app/utils/get_it_injection.dart';
// import 'package:american_board/app/utils/helper.dart';
// import 'package:american_board/features/auth_feature/presentation/presentation_logic_holder/auth_cubit.dart';
// import 'package:american_board/features/bottom_navigation_feature/presentation/screens/bottom_navigation_screen.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../../app/utils/app_colors.dart';
// import '../../../../../app/widgets/button_widget.dart';
// import '../../../../../app/widgets/text_widget.dart';
// import '../../../../app/widgets/default_app_bar_widget.dart';
//
// class ForgetPasswordScreen extends StatefulWidget {
//   const ForgetPasswordScreen({super.key,  this.fromForgotPassword= true});
//   final bool fromForgotPassword ;
//
//   @override
//   State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
// }
//
// class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
// @override
//   void initState() {
//   AuthCubit.get().registerEmailController.text=getIt<CacheService>().getUserData()?.user?.email??"";
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:  DefaultAppBarWidget(
//         canBack: true,
//         onPop: () {
//           navigateTo(BNBScreen(), removeAll: true);
//         },
//       ),
//       body: BlocBuilder<AuthCubit, AuthState>(
//         builder: (context, state) {
//           var cubit = AuthCubit.get();
//           return Form(
//             key: formKey,
//             child: ListView(
//               padding: EdgeInsets.symmetric(horizontal: 21.sp, vertical: 16),
//               children: [
//                 // ImageWidget(
//                 //   imageUrl: AppImages.appLogo,
//                 //   width: 75.w,
//                 //   height: 75.h,
//                 // ),
//                 Row(
//                   children: [
//                     TextWidget(
//                       title: widget.fromForgotPassword?"ConfirmYourIdentity".tr():"VerifyYourAccount".tr(),
//                       titleSize: 24.sp,
//                       titleColor: AppColors.mainColor,
//                       titleFontWeight: FontWeight.w400,
//                     ),
//                   ],
//                 ),
//                 16.verticalSpace,
//                RichText(text: TextSpan(
//                  text: widget.fromForgotPassword?"ForSecurityReasons".tr():"WeWillSend".tr(),
//                  style: TextStyle(
//                    color: AppColors.grey7C8997,
//                    fontSize: 16.sp,
//                    fontWeight: FontWeight.w400
//                  ),
//                  children: [
//                    TextSpan(
//                      text:widget.fromForgotPassword? cubit.loginEmailController.text:cubit.registerEmailController.text,
//                      style: TextStyle(
//                          color: AppColors.mainColor,
//                          fontSize: 16.sp,
//                          fontWeight: FontWeight.w400
//                      ),
//                ),
//           ]
//           ),
//                ),
//                 24.verticalSpace,
//                 ButtonWidget(
//                   onPressed:widget.fromForgotPassword?
//                       () {cubit.resendOtp();}:
//                       () {cubit.resendVerifyOtp();},
//                   text: "send".tr(),
//                   loading: state is LoadingState,
//                 ),
//                 57.verticalSpace,
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
