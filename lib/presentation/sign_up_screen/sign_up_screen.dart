import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/app_bar/appbar_leading_image.dart';
import 'package:m_booking/widgets/app_bar/appbar_subtitle.dart';
import 'package:m_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:m_booking/widgets/custom_elevated_button.dart';
import 'package:m_booking/domain/facebookauth/facebook_auth_helper.dart';
import 'package:m_booking/domain/googleauth/google_auth_helper.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildFrameRow(),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(text: "lbl_continue".tr),
                      Spacer(),
                      _buildFrameRow1(),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                          text: "lbl_facebook".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 11.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgFacebook,
                                  height: 24.v,
                                  width: 12.h)),
                          buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                          buttonTextStyle: CustomTextStyles.titleMediumBold,
                          onPressed: () {
                            onTapFacebook();
                          }),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                          text: "lbl_google".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 12.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGoogle,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize)),
                          buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                          buttonTextStyle: CustomTextStyles.titleMediumBold,
                          onPressed: () {
                            onTapGoogle();
                          }),
                      SizedBox(height: 36.v),
                      Container(
                          width: 312.h,
                          margin: EdgeInsets.only(left: 43.h, right: 42.h),
                          child: Text("msg_by_sign_in_or_sign2".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallGray400
                                  .copyWith(height: 1.50)))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_sign_up".tr));
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Container(
        padding: EdgeInsets.only(top: 25.v, bottom: 24.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgCall,
              height: 32.adaptSize,
              width: 32.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 4.v),
              child: Text("lbl_704_555_0127".tr,
                  style: theme.textTheme.headlineSmall))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow1() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 8.v),
              child: SizedBox(width: 116.h, child: Divider())),
          Text("msg_or_continue_with".tr,
              style: CustomTextStyles.titleMediumBold),
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 8.v),
              child: SizedBox(width: 116.h, child: Divider()))
        ]);
  }

  onTapFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
