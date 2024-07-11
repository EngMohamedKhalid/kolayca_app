import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/image_widget.dart';
import 'package:kolayca_app/app/widgets/loading.dart';
import 'package:kolayca_app/features/auth_feature/presentation/presentation_logic_holder/auth_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/utils/consts.dart';
import '../../../../app/widgets/text_widget.dart';
import '../../../../app/widgets/video_player_widget.dart';
import '../PLH/home_cubit.dart';

class LiveTranslatorScreen extends StatefulWidget {
  const LiveTranslatorScreen({super.key});

  @override
  State<LiveTranslatorScreen> createState() => _LiveTranslatorScreenState();
}

class _LiveTranslatorScreenState extends State<LiveTranslatorScreen> {
  @override
  void initState() {
    HomeCubit.get().getLiveTranslators();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "liveTranslator".tr(),
        centerTitle: true,
        canBack: false,
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = HomeCubit.get();
          return
          state is HomeLoading?
          const Center(child: Loading(),):
            ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            itemCount:  cubit.liveTranslators?.length??0,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  TextWidget(
                    title: cubit.liveTranslators?[index].title??"",
                    titleSize: 36.sp,
                    titleFontWeight: FontWeight.w400,
                    titleColor: AppColors.mainColor,
                  ),
                  16.verticalSpace,
                  VideoPlayerWidget(
                    url: cubit.liveTranslators?[index].linkUrl??"",
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
