// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:mithraa_sports/core/config/styles/app_colors.dart';
//
// extension TextFormFieldStyleHelper on CustomTextFormField{
//   static OutlineInputBorder get OutlineGrayTL5 => OutlineInputBorder(
//     borderRadius: BorderRadius.circular(5.h),
//     borderSide: BorderSide(
//       color: AppColor.greyColor,
//       width: 1
//     ),
//   );
//   static OutlineInputBorder get fillWhiteA => OutlineInputBorder(
//     borderRadius: BorderRadius.circular(2.h),
//     borderSide: BorderSide.none,
//   );
//   static OutlineInputBorder get outlineBlack => OutlineInputBorder(
//     borderRadius: BorderRadius.circular(5.h),
//     borderSide: BorderSide.none,
//   );
// }
//
// class CustomTextFormField extends StatelessWidget{
//   CustomTextFormField(
//   {Key? Key,
//     this.alignment,
//     this.width,
//     this.scrollPadding,
//     this.controller,
//     this.focusNode,
//     this.autofocus=false,
//     this.textStyle,
//     this.obscureText=false,
//     this.textInputAction= TextInputAction.next,
//     this.textInputType= TextInputType.text,
//     this.maxLines,
//     this.hintText,
//     this.hintStyle,
//     this.prefix,
//     this.prefixConstraints,
//     this.suffix,
//     this.suffixConstraints,
//     this.contentPadding,
//     this.borderDecoration,
//     this.fillColor,
//     this.filled=true,
//     this.validator})
//   :super(
//     key: key,
//   );
//   final Alignment? alignment;
//
//   final double? width;
//
//   final TextEditingController? scrollPadding;
//
//   final TextEditingController? controller;
//
//   final FocusNode? focusNode;
//
//   final bool? autofocus;
//
//   final TextStyle? textStyle;
//
//   final bool? obscureText;
//
//   final TextInputAction? textInputAction;
//
//   final TextInputType? textInputType;
//
//   final int? maxLines;
//
//   final String? hintText;
//
//   final TextStyle? hintStyle;
//
//   final Widget? prefix;
//
//   final BoxConstraints? prefixConstraints;
//
//   final Widget? suffix;
//
//   final BoxConstraints? suffixConstraints;
//
//   final EdgeInsets? contentPadding;
//
//   final InputBorder? borderDecoration;
//
//   final Color? fillColor;
//
//   final bool? filled;
//
//   final FormFieldValidator<String>? validator;
//
//   @override
//   Widget build(BuildContext context) {
//    return alignment != null
//        ? Align(
//      alignment: alignment ?? Alignment.center,
//      child: textFormFieldWidget)
//     : textFormFieldWidget;
//   }
//   Widget get textFormFieldWidget => SizedBox(
//     width: width ?? double.maxFinite,
//     child: TextFormField(
//       scrollPadding: EdgeInsets.only(
//         bottom: MediaQuery.of(Get.context!).viewInsets.bottom),
//         controller: controller,
//       focusNode: focusNode,
//       onTapOutside: (event){
//         if( focusNode != null){
//           focusNode?.unfocus();
//         }
//         else(
//         focusManager.instance.primaryFocus?.unfocus(),
//         );
//         }
//     },
//       autofocus: autofocus!,
//       style: textStyle ?? CustomTextStyle.labelLargePoppinsBluegray8009d,
//       obscureText: obscureText!,
//       textInputAction: textInputAction,
//       keyboardType: textInputType,
//       maxLines: maxLines ?? 1,
//       decoration: decoration,
//       validator: validator,
//       ),
//     );
//     InputDecoration get decoration => InputDecoration(
//       hintText: hintText ??"",
//       hintStyle: hintStyle ?? CustomTextStyle.titleSmallWhiteA70001,
//       prefixIcon: prefix,
//       prefixIconConstraints: prefixConstraints,
//       suffixIcon: suffix,
//       suffixIconConstraints: suffixConstraints,
//       isDense: true,
//       contentPadding: contentPadding ?? EdgeInsets.all(12.h),
//       fillColor: fillColor ?? AppColor.whiteColor,
//       filled: filled,
//       border: borderDecoration ??
//         OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12.r),
//           borderSide: BorderSide(
//             color: AppColor.greyColor,
//             width: 1,
//         ),
//       ),
//       enabledBorder: borderDecoration ??
//         OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12.h),
//           borderSide: BorderSide(
//             color: AppColor.greyColor,
//             width: 1,
//           ),
//         ),
//       focusedBorder: borderDecoration ??
//         OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12.h),
//           borderSide: BorderSide(
//             color: AppColor.greyColor,
//             width: 1,
//           ),
//         ),
//     );
// }