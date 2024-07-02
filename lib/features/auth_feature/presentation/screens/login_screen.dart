import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/utils/helper.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/features/auth_feature/presentation/screens/register_screen.dart';
import '../../../../../app/utils/app_assets.dart';
import '../../../../../app/utils/app_colors.dart';
import '../../../../../app/widgets/button_widget.dart';
import '../../../../../app/widgets/custom_form_field.dart';
import '../../../../../app/widgets/image_widget.dart';
import '../../../../../app/widgets/text_button_widget.dart';
import '../../../../../app/widgets/text_widget.dart';
import '../presentation_logic_holder/auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.png"),
              fit: BoxFit.fill,
            )
        ),
        child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              var cu = AuthCubit.get();
              return Form(
                key: formKey,
                child: Column(
                  children: [
                    DefaultAppBarWidget(),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 21.sp,),
                        children: [
                          ImageWidget(
                            imageUrl: "assets/images/name_logo.png",
                            width: 75.w,
                            height: 178.h,
                            //fit: BoxFit.fill,
                          ),
                          150.verticalSpace,
                          Align(
                            alignment: Alignment.center,
                            child: CustomFormField(
                              hint: "name".tr(),
                              controller: cu.loginEmailController,
                              keyboardType: TextInputType.emailAddress,
                              prefixIcon: Icons.person_outline_sharp,
                            ),
                          ),
                          16.verticalSpace,
                          Align(
                            alignment: Alignment.center,
                            child: CustomFormField(
                              hint: "password".tr(),
                              controller: cu.loginPasswordController,
                              suffixIcon: Icons.done,
                              // suffixIcon: cu.passObscure==false?Icons.visibility:Icons.visibility_off,
                              obscure:cu.passObscure,
                              // errorText:  cu.errorMsg,
                              // onChange: (val) {
                              //   cu.errorMsg = null;
                              //   setState(() {});
                              // },
                              // iconPressed: () {
                              //   cu.changeVisible();
                              // },
                            ),
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   children: [
                          //     CustomTextButton(
                          //       onPressed: () {
                          //         // navigateTo( const ForgetPasswordScreen());
                          //       },
                          //       title: "forgetPass".tr(),
                          //       titleColor: AppColors.mainColor,
                          //       titleFontWeight: FontWeight.w400,
                          //       titleSize: 14.sp,
                          //     ),
                          //   ],
                          // ),
                          25.verticalSpace,
                          ButtonWidget(
                            loading: state is LoadingState,
                            onPressed: () {
                              if(formKey.currentState!.validate()){
                                cu.login();
                              }
                            },
                            text: "login".tr(),
                            horizontalMargin: 60.w,
                            textSize: 35.sp,
                            textColor: AppColors.blue69C1FF,
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                title: "noAccount".tr(),
                                titleSize: 16.sp,
                                titleColor: AppColors.white,
                                titleFontWeight: FontWeight.bold,
                              ),
                              2.horizontalSpace,
                              InkWell(
                                onTap: () {
                                  navigateTo(const RegisterScreen(),);
                                },
                                child: Container(
                                  height: 30.h,
                                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                                  decoration: BoxDecoration(
                                    color: AppColors.blue69C1FF,
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: TextWidget(
                                    title: "registerNewAccount".tr(),
                                    titleColor: AppColors.white,
                                    titleSize: 16.sp,
                                    titleFontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          16.verticalSpace,
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

      ),
    );
  }
}
