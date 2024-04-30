import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class AppbarTrailingButton extends StatelessWidget {
  AppbarTrailingButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomOutlinedButton(
          width: 97.h,
          text: "lbl_english".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconOutlineTranslate,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
        ),
      ),
    );
  }
}
