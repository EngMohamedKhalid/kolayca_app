// import 'package:american_board/app/utils/helper.dart';
// import 'package:american_board/app/widgets/default_app_bar_widget.dart';
// import 'package:american_board/features/auth_feature/domain/use_cases/auth_usecases/reset_pass_use_case.dart';
// import 'package:american_board/features/auth_feature/presentation/presentation_logic_holder/auth_cubit.dart';
// import 'package:american_board/features/auth_feature/presentation/screens/sucess_screen.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../app/utils/app_assets.dart';
// import '../../../../app/utils/app_colors.dart';
// import '../../../../app/widgets/button_widget.dart';
// import '../../../../app/widgets/custom_form_field.dart';
// import '../../../../app/widgets/image_widget.dart';
// import '../../../../app/widgets/otp_widget.dart';
// import '../../../../app/widgets/text_widget.dart';
//
// class ResetPasswordScreen extends StatefulWidget {
//   const ResetPasswordScreen({super.key});
//
//   @override
//   State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
// }
//
// class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const DefaultAppBarWidget(
//         canBack: true,
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
//                 // 16.verticalSpace,
//                 Row(
//                   children: [
//                     TextWidget(
//                       title: "updatePassword".tr(),
//                       titleSize: 24.sp,
//                       titleColor: AppColors.mainColor,
//                       titleFontWeight: FontWeight.w400,
//                     ),
//                   ],
//                 ),
//                 16.verticalSpace,
//                 CustomFormField(
//                   hint: "EnterOTP".tr(),
//                   controller: cubit.otpController,
//                   keyboardType: TextInputType.number,
//                   maxLength:4,
//                   validator:(value) {
//                     if (value!.isEmpty) {
//                       return "FieldMustNotBeEmpty".tr();
//                     }else if(value.length<4){
//                       return "OtpMustBe4Digits".tr();
//                     }
//                     return null;
//                   },
//                 ),
//                 CustomFormField(
//                   hint: "enterNewPassword".tr(),
//                   controller: cubit.resetPassController,
//                   suffixIcon:cubit.passObscure==false?Icons.visibility:Icons.visibility_off,
//                   obscure:cubit.passObscure,
//                   iconPressed: () {
//                     cubit.changeVisible();
//                   },
//                 ),
//                 CustomFormField(
//                   hint: "enterNewPasswordCon".tr(),
//                   controller: cubit.resetPassConfirmController,
//                   errorText: cubit.errorMsg,
//                   suffixIcon:
//                   cubit.passConfObscure==false?Icons.visibility:Icons.visibility_off,
//                   obscure:cubit.passConfObscure,
//                   onChange: (value) {
//                     if (value != cubit.resetPassController.text) {
//                       cubit.errorMsg=("PasswordNotMatch".tr());
//                       setState(() {});
//                     } else {
//                       cubit.errorMsg=(null);
//                       setState(() {});
//                     }
//                   },
//                   iconPressed: () {
//                     cubit.changeConfVisible();
//                   },
//                 ),
//                 24.verticalSpace,
//                 ButtonWidget(
//                   onPressed: () {
//                     if (formKey.currentState!.validate()) {
//                       cubit.resetPassword(
//                           ResetPassUseCaseParams(
//                             email: cubit.loginEmailController.text,
//                             otp: cubit.otpController.text,
//                             password: cubit.resetPassController.text,
//                             password_confirmation:cubit.resetPassConfirmController.text,
//                           )
//                       );
//                     }
//                   },
//                   loading: state is LoadingState,
//                   text: "SaveChanges".tr(),
//                 ),
//                 50.verticalSpace,
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
