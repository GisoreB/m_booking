import 'controller/comfirm_otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/app_bar/appbar_leading_image.dart';
import 'package:m_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:m_booking/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class ComfirmOtpScreen extends GetWidget<ComfirmOtpController> {
  const ComfirmOtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 39.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_confirm_otp_code".tr,
                  style: CustomTextStyles.headlineLargePrimary,
                ),
              ),
              SizedBox(height: 19.v),
              SizedBox(
                width: 398.h,
                child: Text(
                  "msg_you_just_need_to".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 41.v),
              Obx(
                () => CustomPinCodeTextField(
                  context: Get.context!,
                  controller: controller.otpController.value,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "lbl_00_59".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
        margin: EdgeInsets.fromLTRB(16.h, 8.v, 374.h, 8.v),
      ),
    );
  }
}
