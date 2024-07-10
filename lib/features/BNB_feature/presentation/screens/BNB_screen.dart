import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/utils/app_colors.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';
import 'package:kolayca_app/features/BNB_feature/presentation/presentation_logic_holder/bottom_navigation_state.dart';
import 'package:kolayca_app/features/auth_feature/presentation/presentation_logic_holder/auth_cubit.dart';

import '../presentation_logic_holder/bottom_navigation_cubit.dart';

class BnbScreen extends StatefulWidget {
  const BnbScreen({super.key});

  @override
  State<BnbScreen> createState() => _BnbScreenState();
}

class _BnbScreenState extends State<BnbScreen> {
  @override
  void initState() {
    super.initState();
    AuthCubit.get().getProfile();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationStats>(
      builder: (context, state) {
        var cubit = BottomNavigationCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar:
          Container(
            color: AppColors.blue69C1FF,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            height: 85.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      cubit.changeCurrent(0);
                    },
                    child: const CustomColumn()),
                VerticalDivider(
                  color: Colors.white,
                  endIndent: 20.w,

                ),
                InkWell(
                  onTap: () {
                    cubit.changeCurrent(1);
                  },
                  child: const CustomColumn(
                    title: "من نحن",
                    icon: Icons.info_outline,
                  ),
                ),
                VerticalDivider(
                  color: Colors.white,
                  endIndent: 20.w,

                ),
                InkWell(
                  onTap: () {
                    cubit.changeCurrent(2);
                  },
                  child: const CustomColumn(
                    title: "تواصل معنا",
                    icon: Icons.message,
                  ),
                ),
                VerticalDivider(
                  color: Colors.white,
                  endIndent: 20.w,

                ),
                InkWell(
                  onTap: () {
                    cubit.changeCurrent(3);
                  },
                  child: const CustomColumn(
                    title: "كيفية الاستخدام",
                    icon: Icons.question_mark,
                  ),
                ),
                VerticalDivider(
                  color: Colors.white,
                  endIndent: 20.w,

                ),
                InkWell(
                  onTap: () {
                    cubit.changeCurrent(4);
                  },
                  child: const CustomColumn(
                    title: "الحساب",
                    icon: Icons.person,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key, this.title, this.icon});

  final String ? title;
  final IconData ? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon ?? Icons.home,
          size: 30.sp,
          color: Colors.white,
        ),
        TextWidget(
          title: title ?? "القائمة الرئيسية",
          titleColor: Colors.white,
          titleSize: 16.sp,
          titleFontWeight: FontWeight.w400,
        )
      ],
    );
  }
}

