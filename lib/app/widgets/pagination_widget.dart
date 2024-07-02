import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'loading.dart';

class PaginationWidget extends StatelessWidget {
  final Widget child;
  final bool isPaginating;
  final bool hasLoading;
  const PaginationWidget({
    required this.child,
    required this.isPaginating,
    super.key, this.hasLoading = true});

  @override
  Widget build(BuildContext context) {
    return
hasLoading?
      Expanded(
      child: Column(
        children: [
          Expanded(child: child),
          Visibility(
            visible: isPaginating,
            child: Padding(
              padding: EdgeInsetsDirectional.only(bottom: 6.h),
              child: const Loading(),
            ),
          ),
        ],
      ),
    )
    :
Column(
  children: [
   child,
    Visibility(
      visible: isPaginating,
      child: Padding(
        padding: EdgeInsetsDirectional.only(bottom: 6.h),
        child: const Loading(),
      ),
    ),
  ],
);
  }
}
