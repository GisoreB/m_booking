import 'controller/choose_language_controller.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/custom_elevated_button.dart';

class ChooseLanguageBottomsheet extends StatelessWidget {
  ChooseLanguageBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ChooseLanguageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_choose_language".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_which_language_do".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_english".tr,
                    style: CustomTextStyles.titleLargePrimary,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.h),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder16,
                  ),
                  child: Container(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Divider(
            color: appTheme.blueGray900,
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_vietnamese".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 132.v),
          CustomElevatedButton(
            text: "lbl_use_english".tr,
            buttonTextStyle: CustomTextStyles.titleLargeBlack900SemiBold,
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }
}
