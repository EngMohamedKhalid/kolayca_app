import 'dart:io';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_flags/country_flags.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kolayca_app/features/auth_feature/domain/use_cases/auth_usecases/update_profile_usecase.dart';

import '../../../../app/services/cache_service.dart';
import '../../../../app/services/image_picker_service/image_picker_service.dart';
import '../../../../app/utils/app_colors.dart';
import '../../../../app/utils/get_it_injection.dart';
import '../../../../app/widgets/button_widget.dart';
import '../../../../app/widgets/custom_alert_dialog.dart';
import '../../../../app/widgets/custom_drop_down.dart';
import '../../../../app/widgets/custom_form_field.dart';
import '../../../../app/widgets/default_app_bar_widget.dart';
import '../../../../app/widgets/loading.dart';
import '../../../../app/widgets/text_widget.dart';
import '../../../auth_feature/presentation/presentation_logic_holder/auth_cubit.dart';
import '../presentation_logic_holder/profile_cubit.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  void initState() {
    super.initState();
    final user = getIt<CacheService>().getUserData();
    // ProfileCubit.get().nameCont.text=ProfileCubit.get().userModel?.user?.name ??user?.user?.name??"";
    // ProfileCubit.get().emailCont.text=ProfileCubit.get().userModel?.user?.email ??user?.user?.email??"";
    // ProfileCubit.get().phoneCont.text=ProfileCubit.get().userModel?.user?.phone ??user?.user?.phone??"";
  }
  String ? selectItem;
  XFile? userImage;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  DefaultAppBarWidget(
        title: "EditProfile".tr(),
        systemUiOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark
        ),
      ),
      body: BlocBuilder<AuthCubit, AuthState>(
  builder: (context, state) {
    var cubit = AuthCubit.get();
    return  state is ProfileLoading?
      const Center(child: Loading(),):
      Form(
      key: formKey,
      child: ListView(
          padding: EdgeInsets.symmetric(horizontal:20.sp),
          children: [
            16.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.bottomRight,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: userImage ==null?
                        const NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/1077/1077114.png"
                           // ProfileCubit.get().userModel?.user?.image ?? "",
                        )
                            :
                           FileImage(File(userImage!.path)) as ImageProvider,
                      )
                    ),
                  ),
                  Positioned(
                    right: -15.w,
                    bottom: -10.h,
                    child: CircleAvatar(
                      backgroundColor: AppColors.mainColor,
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    )
                                ),
                                //height: 200.h,
                                padding: EdgeInsets.symmetric(
                                    vertical: 20.h
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextWidget(
                                      title: "chosePicture".tr(),
                                      titleAlign: TextAlign.center,
                                      titleSize: 20.sp,
                                      titleColor: Colors.black,
                                    ),
                                    20.verticalSpace,
                                    Row(
                                      mainAxisAlignment : MainAxisAlignment.spaceAround,
                                      children: [
                                        IconButton(
                                          onPressed:() async{
                                            Navigator.pop(context);
                                            await ImagePickerService.getImage(imageSource: ImageSource.camera).then((value) {
                                              userImage = value;
                                              if(value != null){
                                                setState(() {

                                                });
                                              }
                                            });
                                          },
                                          icon: Icon(
                                            Icons.camera_alt_rounded,
                                            color: Colors.black,
                                            size:25.sp ,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed:()async {
                                            Navigator.pop(context);
                                            await ImagePickerService.getImage(imageSource: ImageSource.gallery).then((value) {
                                              userImage = value;
                                              if(value != null){
                                                setState(() {

                                                });
                                              }
                                            });
                                          },
                                          icon: Icon(
                                            Icons.photo_library_rounded,
                                            color: Colors.black,
                                            size:25.sp ,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          size: 25.sp,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            32.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: CustomFormField(
                hint: "name".tr(),
                 controller: cubit.editNameController,
              ),
            ),
            32.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: CustomFormField(
                hint: "email".tr(),
                controller: cubit.editEmailController,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            32.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: CustomFormField(
                hint: "password".tr(),
                controller: cubit.editPassController,
                suffixIcon: Icons.done,
                // suffixIcon: cu.passObscure==false?Icons.visibility:Icons.visibility_off,
                // obscure:cu.passObscure,
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


          ],
        ),
    );
  },
),
      bottomNavigationBar:Container(
        padding: EdgeInsets.all(20.sp),
        child: ButtonWidget(
          onPressed: (){
            if(formKey.currentState!.validate() &&
                ProfileCubit.get().passController.text==ProfileCubit.get().passConfirmController.text){
              AuthCubit.get().updateProfile(
                params: UpdateProfileUseCaseParams(
                  email: AuthCubit.get().editEmailController.text,
                  name:AuthCubit.get().editNameController.text,
                  newPassword: AuthCubit.get().editPassController.text,
                  phone: null,
                  image:userImage == null? null : File(userImage!.path),
                ),
              );
            }else{
              globalAlertDialogue(
                "TheConfirmationError".tr(),
              );

            }
          },
          text: "UpdateProfile".tr(),
          textSize: 25.sp,
         // loading: state is UpdateProfileLoading,
          mainAxisAlignment: MainAxisAlignment.center,
          fontWeight: FontWeight.bold,
        ),
      ) ,
    );
  }
}
