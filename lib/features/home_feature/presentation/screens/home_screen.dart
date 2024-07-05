import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/image_widget.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';
import 'package:kolayca_app/features/home_feature/presentation/widgets/custom_home_item.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/widgets/carousel_widget/carousel_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselWidget(
            items:List<Widget>.generate(
              10,
                  (index) => ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child:   ImageWidget(
                  imageUrl: "assets/images/home.png",
                  width: double.infinity,
                  height: 300.h,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          16.verticalSpace,
          Expanded(
            child: GridView.builder(
              itemCount: 20,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return const CustomHomeItem();
                }
            ),
          ),
          16.verticalSpace
        ],
      ),
    );
  }
}
