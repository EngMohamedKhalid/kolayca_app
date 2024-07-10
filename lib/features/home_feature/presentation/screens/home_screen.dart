import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/image_widget.dart';
import 'package:kolayca_app/app/widgets/loading.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';
import 'package:kolayca_app/features/home_feature/presentation/PLH/home_cubit.dart';
import 'package:kolayca_app/features/home_feature/presentation/widgets/custom_home_item.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/widgets/carousel_widget/carousel_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    HomeCubit.get().getCategories();
    HomeCubit.get().getSliders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = HomeCubit.get();
          return
          state is HomeInitial ?
            Column(
            children: [
              CarouselWidget(
                items: List<Widget>.generate(
                  cubit.sliders?.length ?? 0,
                      (index) =>
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: ImageWidget(
                          imageUrl: cubit.sliders?[index].image ?? "assets/images/home.png",
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
                    itemCount: cubit.categories?.length ?? 0,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) {
                      return  CustomHomeItem(
                        name: cubit.categories?[index].title ?? "",
                        image: cubit.categories?[index].image ?? "",
                      );
                    }
                ),
              ),
              16.verticalSpace
            ],
          )
              :
          const Center(
            child: Loading(),
          );
        },
      ),
    );
  }
}
