// // import 'package:dropdown_button2/dropdown_button2.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import '../../app/utils/app_colors.dart';
// // import '../../app/utils/helper.dart';
// //
// // class CustomDropDown extends StatefulWidget {
// //   final double? width;
// //   final double? height;
// //   final String? headLine;
// //   final String dropDownHint;
// //   final TextStyle? dropDownHintTextStyle;
// //   String? selectedValue;
// //   final List<String> items;
// //   final Function(String value) onItemChanged;
// //   CustomDropDown({Key? key,this.width,this.height,this.selectedValue,this.headLine="",
// //     required this.dropDownHint,
// //     this.dropDownHintTextStyle,
// //     this.items=const [''],required  this.onItemChanged}) : super(key: key);
// //
// //   @override
// //   State<CustomDropDown> createState() => _CustomDropDownState();
// // }
// //
// // class _CustomDropDownState extends State<CustomDropDown> {
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     //selectedValue=widget.items.first;
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: widget.width??double.infinity,
// //       height: 50.h,
// //       padding: EdgeInsets.symmetric(horizontal: 16,),
// //       decoration: BoxDecoration(
// //         border: Border.all(width: 1.5,color: AppColors.black),
// //         color: AppColors.green,
// //         borderRadius: BorderRadius.circular(5),
// //       ),
// //       child: Column(
// //         children: [
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.start,
// //             children: [
// //               Text(
// //                 widget.headLine??"",
// //                 style:  TextStyle(
// //                   fontSize:14.sp,
// //                   color: AppColors.black,
// //                   fontFamily: fontRegular,
// //                   // fontFamily: "DIN-DEMI",
// //                 ),
// //               ),
// //             ],
// //           ),
// //           Expanded(
// //             child: DropdownButtonHideUnderline(
// //               child: DropdownButton2(
// //                 isExpanded: true,
// //                 hint: Row(
// //                   children:  [
// //                     Expanded(
// //                       child: Text(
// //                         widget.dropDownHint,
// //                         style: widget.dropDownHintTextStyle??TextStyle(
// //                           fontSize: 18.sp,
// //                           //color: AppColors.green,
// //                           fontWeight: FontWeight.w500,
// //                         ),
// //                         overflow: TextOverflow.ellipsis,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 items: widget.items
// //                     .map((item) => DropdownMenuItem<String>(
// //                   value: item,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(1.0),
// //                     child: Text(
// //                       item,
// //                       style: widget.dropDownHintTextStyle??TextStyle(
// //                         fontSize: 16.sp,
// //                         color: AppColors.white,
// //                       ),
// //                       overflow: TextOverflow.ellipsis,
// //                     ),
// //                   ),
// //                 ))
// //                     .toList(),
// //                 value: widget.selectedValue,
// //                 onChanged: (value) {
// //                   setState(() {
// //                     widget.selectedValue = value as String;
// //                   });
// //                   widget.onItemChanged(value as String);
// //                 },
// //                 icon: const Icon(
// //                   Icons.keyboard_arrow_down_rounded,
// //                   color: AppColors.black,
// //                 ),
// //                 iconSize: 24,
// //                 alignment: Alignment.centerRight,
// //                 iconEnabledColor: AppColors.grey9A9A9A,
// //                 // buttonHeight: 48,
// //                 // buttonWidth: 1000,
// //                 buttonPadding: const EdgeInsets.only(left: 0, right: 14),
// //                 buttonDecoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(0),
// //                   color: AppColors.white,
// //                 ),
// //                 buttonElevation: 0,
// //                 itemHeight: 47,
// //                 itemPadding: const EdgeInsets.only(left: 14, right: 14),
// //                 dropdownMaxHeight: 200,
// //                 dropdownWidth: MediaQuery.of(context).size.width-64,
// //                 dropdownPadding: const EdgeInsets.only(left: 14, right: 14),
// //                 dropdownDecoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(15),
// //                   color: AppColors.white,
// //                 ),
// //                 dropdownElevation: 8,
// //                 scrollbarRadius: const Radius.circular(40),
// //                 scrollbarThickness: 6,
// //                 scrollbarAlwaysShow: true,
// //                 offset: const Offset(0, 0),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../app/utils/app_colors.dart';
// import '../../app/utils/helper.dart';
//
// // ignore: must_be_immutable
// class CustomDropDown extends StatefulWidget {
//   final double? width;
//   final double? height;
//   final Color? color;
//   final String? headLine;
//   final String dropDownHint;
//   final TextStyle? dropDownHintTextStyle;
//   String? selectedValue;
//   final List<String> items;
//   final Function(String value) onItemChanged;
//   CustomDropDown({Key? key,this.width,this.height,this.selectedValue,this.headLine="",
//     required this.dropDownHint,
//     this.dropDownHintTextStyle,
//     this.items=const [''],required  this.onItemChanged, this.color}) : super(key: key);
//
//   @override
//   State<CustomDropDown> createState() => _CustomDropDownState();
// }
//
// class _CustomDropDownState extends State<CustomDropDown> {
//
//   @override
//   void initState() {
//     super.initState();
//     // selectedValue=widget.items.first;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.width??double.infinity,
//       height: 80.h,
//       padding: EdgeInsets.symmetric(vertical: 0.h),
//       decoration: BoxDecoration(
//         // border: Border.all(width: 1.5,color: AppColors.grey9CABBC),
//         color:Colors.transparent,
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 widget.headLine??"",
//                 style:  TextStyle(
//                   fontSize:14.sp,
//                   color: AppColors.gery455,
//                   fontWeight: FontWeight.w400
//                   // fontFamily: "DIN-DEMI",
//                 ),
//               ),
//             ],
//           ),
//           8.verticalSpace,
//           Expanded(
//             child: Container(
//               color: widget.color??Colors.transparent,
//               child: DropdownButtonHideUnderline(
//                 child: DropdownButton2(
//                   isExpanded: true,
//                   hint: Row(
//                     children:  [
//                       Expanded(
//                         child: Text(
//                           widget.dropDownHint,
//                           style: widget.dropDownHintTextStyle??TextStyle(
//                             fontSize: 14.sp,
//                             color: AppColors.gery455,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                     ],
//                   ),
//                   items: widget.items
//                       .map((item) => DropdownMenuItem<String>(
//                     value: item,
//                     child: Padding(
//                       padding: const EdgeInsets.all(1.0),
//                       child: Text(
//                         item,
//                         style: widget.dropDownHintTextStyle??TextStyle(
//                           fontSize: 16.sp,
//                           color: AppColors.black,
//                         ),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   )).toList(),
//                   value: widget.selectedValue,
//                   onChanged: (value) {
//                     setState(() {
//                       widget.selectedValue = value as String;
//                     });
//                     widget.onItemChanged(value as String);
//                   },
//                   icon: const Icon(
//                     Icons.keyboard_arrow_down_rounded,
//                     color: AppColors.black,
//                   ),
//                   iconSize: 24,
//                   alignment: Alignment.centerRight,
//                   iconEnabledColor: AppColors.grey9A9A9A,
//                   // buttonHeight: 48,
//                   // buttonWidth: 1000,
//                   buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//                   buttonDecoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: Color(0xffFAFAFA),
//                   ),
//                   buttonElevation: 0,
//                   itemHeight: 50,
//                   itemPadding: const EdgeInsets.only(left: 14, right: 14),
//                   dropdownMaxHeight: 200,
//                   dropdownWidth: MediaQuery.of(context).size.width-64,
//                   dropdownPadding: const EdgeInsets.only(left: 14, right: 14),
//                   dropdownDecoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: AppColors.white,
//                   ),
//                   dropdownElevation: 8,
//                   scrollbarRadius: const Radius.circular(40),
//                   scrollbarThickness: 6,
//                   scrollbarAlwaysShow: true,
//                   offset: const Offset(0, 0),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/utils/app_colors.dart';
import '../../app/utils/helper.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatefulWidget {
  final double? width;
  final double? height;
  final Color? color;
  final String? headLine;
  final String dropDownHint;
  final TextStyle? dropDownHintTextStyle;
  String? selectedValue;
  final List<String?>? items;
  final Function(String? value) ?onItemChanged;
  CustomDropDown({Key? key,this.width,this.height,this.selectedValue,this.headLine="",
    required this.dropDownHint,
    this.dropDownHintTextStyle,
    this.items=const [''],required  this.onItemChanged, this.color}) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // selectedValue=widget.items.first;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width??double.infinity,
      height:widget.height?? 60.h,
      padding: EdgeInsets.symmetric(vertical: 0.h),
      decoration: BoxDecoration(
        //border: Border.all(width: 1.5,color: AppColors.mainColor),
        color:Color(0xffEDEDEB),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        //color: widget.color??Colors.transparent,
        child:DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              widget.dropDownHint,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
            ),
            items: widget.items
                ?.map((item) => DropdownMenuItem<String>(
              value: item,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  item??"",
                  maxLines: 100,
                  style: widget.dropDownHintTextStyle??TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )).toList(),
            value: widget.selectedValue,
            onChanged:widget.onItemChanged?? (String? value) {
              setState(() {
                widget.selectedValue = value;
              });
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 40,
              width: 140,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 400,
              width: MediaQuery.of(context).size.width-42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
              ),
            ),
            menuItemStyleData:  MenuItemStyleData(
              height: 40.h,
            ),
            iconStyleData: IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
                size: 25.sp,
              ),
              iconSize: 25.sp,
              iconEnabledColor: Colors.black,
              iconDisabledColor: Colors.black,
            ),
          ),
        ),
        // DropdownButtonHideUnderline(
        //   child: DropdownButton2(
        //     isExpanded: true,
        //     hint: Text(
        //       widget.dropDownHint,
        //       style: TextStyle(
        //         fontSize: 13.sp,
        //         color: Theme.of(context).hintColor,
        //         fontWeight: FontWeight.normal,
        //       ),
        //       overflow: TextOverflow.ellipsis,
        //     ),
        //     items: widget.items
        //         .map((item) => DropdownMenuItem<String>(
        //       value: item,
        //       child: Padding(
        //         padding: const EdgeInsets.all(1.0),
        //         child: Text(
        //           item,
        //           maxLines: 100,
        //           style: widget.dropDownHintTextStyle??TextStyle(
        //             fontSize: 16.sp,
        //             color: AppColors.black,
        //           ),
        //           overflow: TextOverflow.ellipsis,
        //         ),
        //       ),
        //     )).toList(),
        //     value: widget.selectedValue,
        //     onChanged: (value) {
        //       setState(() {
        //         widget.selectedValue = value as String;
        //       });
        //       widget.onItemChanged(value as String);
        //     },
        //     customButton:const Icon(
        //       Icons.keyboard_arrow_down_rounded,
        //       color: AppColors.black,
        //     ) ,
        //     // iconSize: 24,
        //     // alignment: Alignment.centerRight,
        //     menuItemStyleData: const MenuItemStyleData(
        //       height: 50,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
