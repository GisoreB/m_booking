import 'controller/sign_in_sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/app_bar/appbar_title_image.dart';
import 'package:m_booking/widgets/app_bar/appbar_trailing_button.dart';
import 'package:m_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:m_booking/widgets/custom_elevated_button.dart';
import 'package:m_booking/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class SignInSignUpScreen extends GetWidget<SignInSignUpController> {
  const SignInSignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 41.v,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 29.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle22,
                  height: 329.adaptSize,
                  width: 329.adaptSize,
                  radius: BorderRadius.circular(
                    32.h,
                  ),
                ),
                SizedBox(height: 34.v),
                Text(
                  "lbl_mbooking_hello".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 9.v),
                Text(
                  "msg_enjoy_your_favorite".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 18.v),
                SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 8,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.gray70001,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                ),
                SizedBox(height: 46.v),
                CustomElevatedButton(
                  text: "lbl_sign_in".tr,
                ),
                SizedBox(height: 16.v),
                CustomOutlinedButton(
                  height: 56.v,
                  text: "lbl_sign_up".tr,
                  buttonStyle: CustomButtonStyles.outlineGrayTL28,
                  buttonTextStyle: theme.textTheme.titleLarge!,
                ),
                SizedBox(height: 28.v),
                Container(
                  width: 312.h,
                  margin: EdgeInsets.only(
                    left: 43.h,
                    right: 42.h,
                  ),
                  child: Text(
                    "msg_by_sign_in_or_sign".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallGray400.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgFrame,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }
}
