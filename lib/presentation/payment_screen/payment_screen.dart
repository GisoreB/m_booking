import 'controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/app_bar/appbar_leading_image.dart';
import 'package:m_booking/widgets/app_bar/appbar_subtitle.dart';
import 'package:m_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:m_booking/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends GetWidget<PaymentController> {
  const PaymentScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFrameRow2(),
                        SizedBox(height: 27.v),
                        _buildFrameRow(
                          seatText: "lbl_oder_id".tr,
                          hHEight: "lbl_78889377726".tr,
                        ),
                        SizedBox(height: 15.v),
                        _buildFrameRow(
                          seatText: "lbl_seat".tr,
                          hHEight: "lbl_h7_h8".tr,
                        ),
                        SizedBox(height: 18.v),
                        _buildEighteenRow(),
                        SizedBox(height: 32.v),
                        Divider(
                          color: appTheme.gray70002,
                        ),
                        SizedBox(height: 25.v),
                        _buildFrameRow(
                          seatText: "lbl_total".tr,
                          hHEight: "lbl_189_000_vnd".tr,
                        ),
                        SizedBox(height: 22.v),
                        Text(
                          "lbl_payment_method".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 15.v),
                        _buildFrameRow1(
                          image: ImageConstant.imgRectangle51,
                          shopeePay: "lbl_zalo_pay".tr,
                        ),
                        SizedBox(height: 16.v),
                        _buildFrameRow1(
                          image: ImageConstant.imgRectangle5148x86,
                          shopeePay: "lbl_momo".tr,
                        ),
                        SizedBox(height: 16.v),
                        _buildFrameRow1(
                          image: ImageConstant.imgRectangle511,
                          shopeePay: "lbl_shopee_pay".tr,
                        ),
                        SizedBox(height: 16.v),
                        _buildFrameRow1(
                          image: ImageConstant.imgRectangle512,
                          shopeePay: "lbl_atm_card".tr,
                        ),
                        SizedBox(height: 16.v),
                        _buildFrameRow10(),
                        SizedBox(height: 32.v),
                        _buildFrameRow(
                          seatText: "msg_complete_your_payment".tr,
                          hHEight: "lbl_15_00".tr,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrameColumn(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_payment".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow2() {
    return Container(
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle11,
            height: 141.v,
            width: 100.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 15.v,
              bottom: 27.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_avengers_infinity2".tr,
                  style: CustomTextStyles.titleLargeSFProTextPrimary,
                ),
                SizedBox(height: 9.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_acton_adventure".tr,
                        style: CustomTextStyles.bodySmallGray300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedin,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_vincom_ocean_park".tr,
                        style: CustomTextStyles.bodySmallSFProTextGray100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_10_12_2022_14_15".tr,
                        style: CustomTextStyles.bodySmallGray40001,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteenRow() {
    return Container(
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserGray100,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 10.v,
              bottom: 10.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_discount_code".tr,
              style: CustomTextStyles.bodyMediumGray500,
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 40.v,
            width: 119.h,
            text: "lbl_apply".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL8,
            buttonTextStyle: CustomTextStyles.titleMediumBlack900Bold_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow10() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle513,
            height: 48.v,
            width: 86.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_international_payments".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_visa_master_jcb".tr,
                  style: CustomTextStyles.bodySmallGray100,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray100,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn() {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 40.v,
      ),
      decoration: AppDecoration.gradientBlackToBlack,
      child: CustomElevatedButton(
        text: "lbl_continue".tr,
        buttonTextStyle: CustomTextStyles.titleLargeBlack900SemiBold,
      ),
    );
  }

  /// Common widget
  Widget _buildFrameRow({
    required String seatText,
    required String hHEight,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            seatText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.gray100,
            ),
          ),
        ),
        Text(
          hHEight,
          style: CustomTextStyles.titleMediumBold.copyWith(
            color: appTheme.gray100,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameRow1({
    required String image,
    required String shopeePay,
  }) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: image,
            height: 48.v,
            width: 86.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 14.v,
              bottom: 13.v,
            ),
            child: Text(
              shopeePay,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.gray100,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray100,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }
}
