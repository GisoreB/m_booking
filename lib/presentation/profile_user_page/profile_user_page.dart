import 'controller/profile_user_controller.dart';
import 'models/profile_user_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/custom_switch.dart';

class ProfileUserPage extends StatelessWidget {
  ProfileUserPage({Key? key})
      : super(
          key: key,
        );

  ProfileUserController controller =
      Get.put(ProfileUserController(ProfileUserModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 52.v,
            ),
            child: Column(
              children: [
                _buildProfileUserRow(),
                SizedBox(height: 64.v),
                _buildMyTicketRow(),
                SizedBox(height: 24.v),
                Divider(
                  color: appTheme.gray800,
                ),
                SizedBox(height: 23.v),
                _buildPaymentHistoryRow(),
                SizedBox(height: 24.v),
                Divider(
                  color: appTheme.gray800,
                ),
                SizedBox(height: 23.v),
                _buildChangeLanguageRow(),
                SizedBox(height: 24.v),
                Divider(
                  color: appTheme.gray800,
                ),
                SizedBox(height: 23.v),
                _buildChangePasswordRow(),
                SizedBox(height: 24.v),
                Divider(
                  color: appTheme.gray800,
                ),
                SizedBox(height: 23.v),
                _buildFaceIdRow(),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileUserRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 6.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse4190x90,
                  height: 90.adaptSize,
                  width: 90.adaptSize,
                  radius: BorderRadius.circular(
                    45.h,
                  ),
                  margin: EdgeInsets.only(bottom: 5.v),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_angelina".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCallOnerror,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_704_555_0127".tr,
                            style: CustomTextStyles.bodyMediumOnError,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "msg_angelina_example_com".tr,
                            style: CustomTextStyles.bodyMediumOnError,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 76.h,
            bottom: 77.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMyTicketRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 123.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTelevisionOnerror,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 7.v,
                  bottom: 4.v,
                ),
                child: Text(
                  "lbl_my_ticket".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightOnerror,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPaymentHistoryRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCart,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
                bottom: 4.v,
              ),
              child: Text(
                "lbl_payment_history".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightOnerror,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildChangeLanguageRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgIconOutlineTranslateOnerror,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
                bottom: 4.v,
              ),
              child: Text(
                "lbl_change_language".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightOnerror,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildChangePasswordRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
                bottom: 4.v,
              ),
              child: Text(
                "lbl_change_password".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightOnerror,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFaceIdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFaceId,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
                bottom: 4.v,
              ),
              child: Text(
                "msg_face_id_touch".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
            ),
          ],
        ),
        Obx(
          () => CustomSwitch(
            value: controller.isSelectedSwitch.value,
            onChange: (value) {
              controller.isSelectedSwitch.value = value;
            },
          ),
        ),
      ],
    );
  }
}
