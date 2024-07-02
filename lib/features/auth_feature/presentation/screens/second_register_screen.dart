// import 'package:american_board/features/auth_feature/presentation/widgets/custom_row_instruction_item.dart';
// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:country_flags/country_flags.dart';
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
// import '../presentation_logic_holder/auth_cubit.dart';
// import 'forget_password_screen.dart';
// import 'login_screen.dart';
//
// class SecondRegisterScreen extends StatefulWidget {
//   const SecondRegisterScreen({super.key});
//
//   @override
//   State<SecondRegisterScreen> createState() => _SecondRegisterScreenState();
// }
//
// class _SecondRegisterScreenState extends State<SecondRegisterScreen> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   bool isShow = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<AuthCubit, AuthState>(
//         builder: (context, state) {
//           var cu = AuthCubit.get();
//           return Form(
//             key: formKey,
//             child: ListView(
//               padding: EdgeInsets.symmetric(horizontal: 21.sp, vertical: 50),
//               children: [
//                 ImageWidget(
//                   imageUrl: AppImages.appLogo,
//                   width: 75.w,
//                   height: 75.h,
//                 ),
//                 10.verticalSpace,
//                 TextWidget(
//                   title: "AccountInformation".tr(),
//                   titleSize: 32.sp,
//                   titleColor: AppColors.mainColor,
//                   titleFontWeight: FontWeight.w600,
//                 ),
//                 8.verticalSpace,
//                 TextWidget(
//                   title: "EnterInfo".tr(),
//                   titleSize: 16.sp,
//                   titleColor: AppColors.grey605E5E,
//                   titleFontWeight: FontWeight.w400,
//                 ),
//                 24.verticalSpace,
//                 CustomFormField(
//                   hint: "enterEmail".tr(),
//                   controller: cu.registerEmailController,
//                   keyboardType: TextInputType.emailAddress,
//                   //errorText:  cu.errorMsg,
//                 ),
//                 20.verticalSpace,
//                 CustomFormField(
//                   hint: "enterPassword".tr(),
//                   controller: cu.registerPassController,
//                   suffixIcon: cu.passObscure==false?Icons.visibility:Icons.visibility_off,
//                   obscure:cu.passObscure,
//                   //errorText: cu.errorMsg,
//                   iconPressed: () {
//                     cu.changeVisible();
//                   },
//                 ),
//                 // InkWell(
//                 //   onTap: () {
//                 //     setState(() {
//                 //       isShow = !isShow;
//                 //     });
//                 //   },
//                 //   child: Row(
//                 //     children: [
//                 //       TextWidget(
//                 //         title: "PasswordInstructions".tr(),
//                 //         titleSize: 12.sp,
//                 //         titleColor: AppColors.grey605E5E,
//                 //         titleFontWeight: FontWeight.w500,
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),
//                 // 10.verticalSpace,
//                 // isShow ?
//                 // const Column(
//                 //   children: [
//                 //     CustomRowInstructionItem(title: "Have8characters"),
//                 //     CustomRowInstructionItem(title: "IncludeLetters"),
//                 //     CustomRowInstructionItem(title: "IncludeSymbols"),
//                 //     CustomRowInstructionItem(title: "AvoidCommonPatterns"),
//                 //   ],
//                 // )
//                 //     :0.verticalSpace,
//                 20.verticalSpace,
//                 CustomFormField(
//                   hint: "ConfirmPassword".tr(),
//                   controller: cu.registerPassConfirmController,
//                   errorText: cu.errorMsg,
//                   suffixIcon:
//                   cu.passConfObscure==false?Icons.visibility:Icons.visibility_off,
//                   obscure:cu.passConfObscure,
//                   onChange: (value) {
//                     if(value.isEmpty){
//                       setState(() {
//                         cu.errorMsg=(null);
//                       });
//                     }
//                     if (value != cu.registerPassController.text) {
//                       cu.errorMsg=("PasswordNotMatch".tr());
//                       setState(() {});
//                     } else {
//                       cu.errorMsg=(null);
//                       setState(() {});
//                     }
//                   },
//                   iconPressed: () {
//                     cu.changeConfVisible();
//                   },
//                 ),
//                 144.verticalSpace,
//                 ButtonWidget(
//                   loading: state is LoadingState,
//                   onPressed: () {
//                     if(formKey.currentState!.validate()){
//                       cu.register();
//                     }
//                   },
//                   text: "CreateAccount".tr(),
//                 ),
//                 16.verticalSpace,
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextWidget(
//                       title: "AlreadyHaveAccount".tr(),
//                       titleSize: 14.sp,
//                       titleColor: AppColors.grey605E5E,
//                       titleFontWeight: FontWeight.w400,
//                     ),
//                     5.horizontalSpace,
//                     CustomTextButton(
//                       onPressed: () {
//                         navigateTo(LoginScreen(),replace: true);
//                       },
//                       title: "login".tr(),
//                       titleColor: AppColors.mainColor,
//                       titleFontWeight: FontWeight.w500,
//                       titleSize: 14.sp,
//                     ),
//                   ],
//                 ),
//                 16.verticalSpace,
//
//
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
