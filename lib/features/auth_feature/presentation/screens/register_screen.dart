import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/loading.dart';
import '../../../../../app/utils/app_assets.dart';
import '../../../../../app/utils/app_colors.dart';
import '../../../../../app/widgets/button_widget.dart';
import '../../../../../app/widgets/custom_form_field.dart';
import '../../../../../app/widgets/image_widget.dart';
import '../../../../../app/widgets/text_button_widget.dart';
import '../../../../../app/widgets/text_widget.dart';
import '../../../../app/utils/helper.dart';
import '../../../BNB_feature/presentation/screens/BNB_screen.dart';
import '../presentation_logic_holder/auth_cubit.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DefaultAppBarWidget(
                      canBack: false,
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 21.sp,),
                      children: [
                        Container(
                          width: 229.w,
                          height: 229.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white
                          ),
                          child:ImageWidget(
                            imageUrl: "assets/images/person.png",
                            height: 116.h,
                            width: 95.w,
                          )
                        ),
                        70.verticalSpace,
                        TextWidget(
                          title: "newAccount".tr(),
                          titleColor: AppColors.grey5F5F5F,
                          titleSize: 36.sp,
                          titleFontWeight: FontWeight.w400,
                        ),
                        16.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: AppColors.grey606060,
                              height: 3.h,
                              width: 150.w,
                            ),
                          ],
                        ),
                        42.verticalSpace,
                        Align(
                          alignment: Alignment.center,
                          child: CustomFormField(
                            hint: "name".tr(),
                            controller: cu.registerNameController,
                          ),
                        ),
                        16.verticalSpace,
                        Align(
                          alignment: Alignment.center,
                          child: CustomFormField(
                            hint: "email".tr(),
                             controller: cu.registerEmailController,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        16.verticalSpace,
                        Align(
                          alignment: Alignment.center,
                          child: CustomFormField(
                            hint: "password".tr(),
                            controller: cu.registerPassController,
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
                        16.verticalSpace,
                        Align(
                          alignment: Alignment.center,
                          child: CustomFormField(
                            hint: "password".tr(),
                            controller: cu.registerPassConfirmController,
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
                       state is LoadingState?
                       const Center(child: Loading())
                           :
                       InkWell(
                         onTap: (){
                           if(formKey.currentState!.validate()){
                             cu.register();
                           }
                         },
                         child: ImageWidget(
                           imageUrl: "assets/images/arrow.png",
                           height: 118.h,
                         ),
                       ),
                        16.verticalSpace,
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),

      ),
    );
  }
}
