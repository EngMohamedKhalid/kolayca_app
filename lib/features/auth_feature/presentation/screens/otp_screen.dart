// import 'dart:async';
//
// import 'package:american_board/app/widgets/otp_widget.dart';
// import 'package:american_board/features/auth_feature/presentation/presentation_logic_holder/auth_cubit.dart';
// import 'package:american_board/features/auth_feature/presentation/screens/forget_password_screen.dart';
// import 'package:american_board/features/auth_feature/presentation/screens/reset_password_screen.dart';
// import 'package:american_board/features/auth_feature/presentation/screens/sucess_screen.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../../app/utils/app_assets.dart';
// import '../../../../../app/utils/app_colors.dart';
// import '../../../../../app/utils/helper.dart';
// import '../../../../../app/widgets/button_widget.dart';
// import '../../../../../app/widgets/custom_form_field.dart';
// import '../../../../../app/widgets/image_widget.dart';
// import '../../../../../app/widgets/text_button_widget.dart';
// import '../../../../../app/widgets/text_widget.dart';
// import '../../../../app/widgets/default_app_bar_widget.dart';
// import 'login_screen.dart';
//
// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key, });
//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen> {
// final formKey = GlobalKey<FormState>();
// bool showResend = false;
// int secondsRemaining = 180;
// Timer? timer;
// String formatTime(int seconds) {
//     int minutes = seconds ~/ 60;
//     int remainingSeconds = seconds % 60;
//     return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
//   }
// @override
// void initState() {
//   super.initState();
//   timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//     setState(() {
//       if (secondsRemaining > 0) {
//         secondsRemaining--;
//      showResend = false;
//       } else {
//         setState(() {
//           showResend = true;
//         });
//       }
//     });
//   });
// }
// @override
// void dispose() {
//   timer!.cancel();
//   super.dispose();
// }
// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:  DefaultAppBarWidget(
//         canBack: true,
//         onPop: () {
//           navigateTo(const ForgetPasswordScreen(fromForgotPassword: false,),replace: true);
//         },
//       ),
//       body: BlocBuilder<AuthCubit, AuthState>(
//         builder: (context, state) {
//           var cubit = AuthCubit.get();
//           return Form(
//             key: formKey,
//             child: ListView(
//               padding: EdgeInsets.symmetric(horizontal: 21.sp, vertical: 16.h),
//               children: [
//                 Row(
//                   children: [
//                     TextWidget(
//                       title: "CheckYourEmail".tr(),
//                       titleSize: 24.sp,
//                       titleColor: AppColors.mainColor,
//                       titleFontWeight: FontWeight.w400,
//                     ),
//                   ],
//                 ),
//                 16.verticalSpace,
//                 RichText(
//                   text: TextSpan(
//                     text: "WeHaveSent".tr(),
//                     style: TextStyle(
//                         color: AppColors.grey7C8997,
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w400
//                     ),
//                     children: [
//                       TextSpan(
//                         text:cubit.registerEmailController.text,
//                         style: TextStyle(
//                             color: AppColors.mainColor,
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w400
//                         ),
//                       ),
//                     ]
//                 ),
//                 ),
//                 24.verticalSpace,
//                 OtpWidget(
//                   controller: cubit.otpController,
//                   length: 4,
//                 ),
//                 24.verticalSpace,
//                 ButtonWidget(
//                   loading: state is LoadingState,
//                   onPressed: () {
//                     if (formKey.currentState!.validate()) {
//                        cubit.verifyOtp();
//                     }
//                   },
//                   text: "Continue".tr(),
//                 ),
//                 24.verticalSpace,
//                showResend? CustomTextButton(
//                   onPressed: () {
//                     cubit.resendVerifyOtp();
//                   },
//                   title: "ResendCode".tr(),
//                 ):
//                 TextWidget(
//                     title: formatTime(secondsRemaining),
//                     titleSize: 16.sp,
//                     titleColor: AppColors.mainColor,
//                     titleFontWeight: FontWeight.w400),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
