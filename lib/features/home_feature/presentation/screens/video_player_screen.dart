import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/widgets/default_app_bar_widget.dart';
import '../../../../app/widgets/video_player_widget.dart';


class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key,});
  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: const DefaultAppBarWidget(),
      body:ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          16.verticalSpace,
          VideoPlayerWidget(),
          16.verticalSpace,
        ],
      ),

    );
  }
}
