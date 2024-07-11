import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/loading.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';
import 'package:kolayca_app/features/home_feature/presentation/PLH/home_cubit.dart';

import '../../../../app/utils/app_colors.dart';
import 'dart:ui' as ui;

class SubscribePackageScreen extends StatefulWidget {
  const SubscribePackageScreen({super.key});

  @override
  State<SubscribePackageScreen> createState() => _SubscribePackageScreenState();
}

class _SubscribePackageScreenState extends State<SubscribePackageScreen> {
  @override
  void initState() {
    super.initState();
    HomeCubit.get().getPackages();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "subscribe".tr(),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
  builder: (context, state) {
    var cubit = HomeCubit.get();
    return
    state is HomeLoading?
    const Center(child: Loading()):
      Directionality(
        textDirection: ui.TextDirection.ltr,
        child: ListView.separated(
          itemCount:cubit.packages?.length??0,
          padding: EdgeInsets.all(16.sp),
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 170.sp,
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 50.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffC48145),
                      borderRadius: BorderRadius.circular(32.sp),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                      ]
                  ),
                ),
                Container(
                  height: 150.sp,
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  decoration: BoxDecoration(
                    color: index % 2 == 0 ? const Color(0xffBDD2C4) : const Color(0xffEDCC8F),
                    borderRadius: BorderRadius.circular(16.sp),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        title: "${cubit.packages?[index].price??""}\$",
                        titleSize: 20.sp,
                        titleColor: AppColors.black,
                        textDecoration: TextDecoration.underline,
                        titleFontWeight: FontWeight.w400,
                      ),
                      RotatedBox(
                        quarterTurns: -1,
                        child: TextWidget(
                          title: "GOLD",
                          titleSize: 20.sp,
                          titleColor: AppColors.black,
                          titleFontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 100.w),
                  padding: EdgeInsets.all(16.sp),
                  height: 170.sp,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextWidget(
                        title: cubit.packages?[index].name??"",
                        titleSize: 20.sp,
                        titleColor: AppColors.black,
                        titleFontWeight: FontWeight.w400,
                      ),
                      // TextWidget(
                      //   title: "30 templates and 30 images",
                      //   titleSize: 20.sp,
                      //   titleColor: AppColors.black,
                      //   titleFontWeight: FontWeight.w400,
                      // ),
                      TextWidget(
                        title: cubit.packages?[index].description??"",
                        titleSize: 20.sp,
                        titleColor: AppColors.black,
                        titleFontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => 50.verticalSpace,
        ),
      );
  },
),
    );
  }
}
