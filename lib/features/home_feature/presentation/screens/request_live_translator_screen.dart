import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kolayca_app/app/widgets/button_widget.dart';
import 'package:kolayca_app/app/widgets/default_app_bar_widget.dart';
import 'package:kolayca_app/app/widgets/text_widget.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/widgets/custom_drop_down.dart';

class RequestLiveTranslatorScreen extends StatefulWidget {
  const RequestLiveTranslatorScreen({super.key});

  @override
  State<RequestLiveTranslatorScreen> createState() => _RequestLiveTranslatorScreenState();
}

class _RequestLiveTranslatorScreenState extends State<RequestLiveTranslatorScreen> {
  String ? selectedTime  ;
  String ? selectedDate ;
  String ? selectedDepart;
  List <String>  departments = [
    "الترجمة الطبيــة",
    "الترجمة العقاريـة",
    "الترجمةالسياحيـة",
    "الترجمة التعليمية",
    "الترجمة العامـــة",
    "الدوائر الحكوميــة",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget(
        title: "liveTranslator".tr(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
        child: Column(

          children: [
            16.verticalSpace,
            ButtonWidget(
              onPressed: (){},
              text: "callLiveTranslator".tr(),
              icon:Icon(Icons.phone ,color: AppColors.white ,size: 25.sp,),
              textSize: 24.sp,
              fontWeight: FontWeight.w400,
            ),
            50.verticalSpace,
            Divider(
              color: AppColors.gery4,
              thickness: 3.sp,
            ),
            50.verticalSpace,
            TextWidget(
              title: "addAppointment".tr(),
              titleSize: 25.sp,
              titleFontWeight: FontWeight.bold,
              titleColor: AppColors.mainColor,
            ),
            100.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    onPressed: (){
                      showTimePicker(
                          context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.dialOnly,
                      ).then((value) {
                        if (value != null) {
                          selectedTime = value.format(context).toString();
                          setState(() {

                          });
                        }
                      });
                    },
                    text: selectedTime??"time".tr(),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    horizontalPadding: 16.w,
                    icon:Icon(Icons.access_time ,color: AppColors.white ,size: 25.sp,),
                    textSize: 24.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                16.horizontalSpace,
                Expanded(
                  child: ButtonWidget(
                    onPressed: (){
                      showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          lastDate: DateTime(5000),
                      ).then((value) {
                        if (value != null) {
                         selectedDate = value.toString().substring(0,10);
                          setState(() {});
                        }
                      });
                    },
                    text: selectedDate??"date".tr(),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    horizontalPadding: 16.w,
                    icon:Icon(Icons.date_range ,color: AppColors.white ,size: 25.sp,),
                    textSize: 24.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            150.verticalSpace,
            CustomDropDown(
              onItemChanged: (val) {
                selectedDepart = val;
                setState(() {

                });
              },
              items: departments,
              dropDownHint: selectedDepart ?? "department".tr(),
              headLine: "department".tr(),
            ),
            150.verticalSpace,
            ButtonWidget(
              onPressed: (){},
              text: "request".tr(),
              width: 150.w,
            //  icon:Icon(Icons.phone ,color: AppColors.white ,size: 25.sp,),
              textSize: 24.sp,
              fontWeight: FontWeight.w400,
            ),
            34.verticalSpace,
          ],
        ),
      ),
    );
  }
}
