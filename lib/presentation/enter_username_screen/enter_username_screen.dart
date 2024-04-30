import 'controller/enter_username_controller.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/app_bar/appbar_leading_image.dart';
import 'package:m_booking/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class EnterUsernameScreen extends GetWidget<EnterUsernameController> {
  const EnterUsernameScreen({Key? key})
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
            vertical: 40.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_enter_username".tr,
                style: CustomTextStyles.headlineLargePrimary,
              ),
              SizedBox(height: 12.v),
              Text(
                "msg_latin_characters".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 37.v),
              _buildFrame(),
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

  /// Section Widget
  Widget _buildFrame() {
    return SizedBox(
      height: 56.v,
      width: 397.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 52.v,
              width: 397.h,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: theme.colorScheme.errorContainer,
                    width: 1.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "lbl_angelina".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    );
  }
}
