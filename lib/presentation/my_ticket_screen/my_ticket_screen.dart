import 'controller/my_ticket_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/app_bar/appbar_leading_image.dart';
import 'package:m_booking/widgets/app_bar/appbar_title.dart';
import 'package:m_booking/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MyTicketScreen extends GetWidget<MyTicketController> {
  const MyTicketScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 824.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 32.v),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 16.h,
                    bottom: 5.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 21.h,
                    vertical: 18.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup4,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 5.v),
                      _buildEighteen(),
                      SizedBox(height: 35.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            right: 13.h,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgCalendarBlueGray90002,
                                        height: 48.adaptSize,
                                        width: 48.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_14h15".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack900,
                                            ),
                                            SizedBox(height: 8.v),
                                            Text(
                                              "lbl_10_12_2022".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack900,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgSeatCinema,
                                        height: 48.adaptSize,
                                        width: 48.adaptSize,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_section_4".tr,
                                      style:
                                          CustomTextStyles.titleMediumBlack900,
                                    ),
                                    SizedBox(height: 9.v),
                                    Text(
                                      "lbl_seat_h7_h8".tr,
                                      style:
                                          CustomTextStyles.titleMediumBlack900,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Divider(
                        color: appTheme.black900,
                      ),
                      Spacer(),
                      Divider(
                        color: appTheme.black900,
                      ),
                      SizedBox(height: 42.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 100.v,
                        width: 350.h,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "msg_oder_id_78889377726".tr,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  margin: EdgeInsets.only(bottom: 226.v),
                  decoration: BoxDecoration(
                    color: appTheme.black900,
                    borderRadius: BorderRadius.circular(
                      24.h,
                    ),
                  ),
                ),
              ),
              _buildFrame(),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  margin: EdgeInsets.only(bottom: 226.v),
                  decoration: BoxDecoration(
                    color: appTheme.black900,
                    borderRadius: BorderRadius.circular(
                      24.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownOnprimarycontainer,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_my_ticket".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteen() {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle21,
            height: 177.v,
            width: 125.h,
            radius: BorderRadius.circular(
              13.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 22.v,
              bottom: 78.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_avengers_infinity2".tr,
                  style: CustomTextStyles.titleLargeBlack900SemiBold,
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClockBlueGray90002,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "msg_2_hours_29_minutes".tr,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Row(
                  children: [
                    Container(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      decoration: AppDecoration.fillOnPrimaryContainer,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUploadBlack900,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "msg_action_adventure".tr,
                        style: CustomTextStyles.bodyMediumBlack900,
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
  Widget _buildFrame() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 39.h,
          right: 46.h,
          bottom: 270.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgContrastBlueGray90002,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_210_000_vnd".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "msg_vincom_ocean_park2".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                ),
                Container(
                  height: 16.v,
                  width: 32.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 4.v,
                    bottom: 4.v,
                  ),
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrame428Onprimarycontainer,
                    height: 11.v,
                    width: 26.h,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.v),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 312.h,
                margin: EdgeInsets.only(left: 32.h),
                child: Text(
                  "msg_4th_floor_vincom".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack900.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(right: 32.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 19.v),
                  ),
                  Expanded(
                    child: Container(
                      width: 279.h,
                      margin: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_show_this_qr_code".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
