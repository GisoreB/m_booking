import '../movie_detail_screen/widgets/castlist1_item_widget.dart';
import '../movie_detail_screen/widgets/castlist2_item_widget.dart';
import '../movie_detail_screen/widgets/cinemalist_item_widget.dart';
import 'controller/movie_detail_controller.dart';
import 'models/castlist1_item_model.dart';
import 'models/castlist2_item_model.dart';
import 'models/cinemalist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/custom_elevated_button.dart';
import 'package:m_booking/widgets/custom_outlined_button.dart';
import 'package:m_booking/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class MovieDetailScreen extends GetWidget<MovieDetailController> {
  const MovieDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              height: 1235.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 5.v),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildMovieDetail(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildMovieInfo(),
                          SizedBox(height: 33.v),
                          Padding(
                            padding: EdgeInsets.only(right: 91.h),
                            child: Row(
                              children: [
                                Text(
                                  "lbl_movie_genre".tr,
                                  style: CustomTextStyles
                                      .bodyLargeSecondaryContainer,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.h),
                                  child: Text(
                                    "msg_action_adventure".tr,
                                    style: CustomTextStyles.titleMediumBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "lbl_censorship".tr,
                                  style: CustomTextStyles
                                      .bodyLargeSecondaryContainer,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: Text(
                                  "lbl_13".tr,
                                  style: CustomTextStyles.titleMediumBold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.v),
                          Row(
                            children: [
                              Text(
                                "lbl_language".tr,
                                style: CustomTextStyles
                                    .bodyLargeSecondaryContainer,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 49.h),
                                child: Text(
                                  "lbl_english".tr,
                                  style: CustomTextStyles.titleMediumBold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 26.v),
                          Text(
                            "lbl_storyline".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                          SizedBox(height: 19.v),
                          Container(
                            width: 390.h,
                            margin: EdgeInsets.only(right: 23.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_as_the_avengers2".tr,
                                    style: CustomTextStyles.bodyLargefff2f2f2,
                                  ),
                                  TextSpan(
                                    text: "lbl_see_more".tr,
                                    style: CustomTextStyles.titleMediumfffcc434,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 22.v),
                          Text(
                            "lbl_director".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                          SizedBox(height: 18.v),
                          _buildCastList1(),
                          SizedBox(height: 26.v),
                          Text(
                            "lbl_actor".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                          SizedBox(height: 17.v),
                          _buildCastList2(),
                          SizedBox(height: 25.v),
                          Text(
                            "lbl_cinema".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                          SizedBox(height: 18.v),
                          _buildCinemaList(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildFrame(),
      ),
    );
  }

  /// Section Widget
  Widget _buildMovieDetail() {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 201.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle49,
              height: 201.v,
              width: 430.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 48.adaptSize,
                width: 48.adaptSize,
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 20.v,
                ),
                decoration: AppDecoration.fillBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMovieInfo() {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_avengers_infinity2".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 4.v),
          Text(
            "msg_2h29m_16_12_2022".tr,
            style: CustomTextStyles.bodyLargeGray40001,
          ),
          SizedBox(height: 40.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "lbl_review".tr,
                        style: CustomTextStyles.titleMediumBold,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStar716x16,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 2.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 4.v,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_4_8".tr,
                                style: CustomTextStyles.titleMediumfff2f2f2,
                              ),
                              TextSpan(
                                text: "lbl_1_2222".tr,
                                style: CustomTextStyles.bodySmallfff2f2f2,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.v),
                  CustomRatingBar(
                    initialRating: 5,
                  ),
                ],
              ),
              CustomOutlinedButton(
                height: 34.v,
                width: 122.h,
                text: "lbl_watch_trailer".tr,
                margin: EdgeInsets.only(top: 30.v),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineGrayTL4,
                buttonTextStyle: CustomTextStyles.labelLargeGray40001,
              ),
            ],
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCastList1() {
    return SizedBox(
      height: 58.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 98.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller
              .movieDetailModelObj.value.castlist1ItemList.value.length,
          itemBuilder: (context, index) {
            Castlist1ItemModel model = controller
                .movieDetailModelObj.value.castlist1ItemList.value[index];
            return Castlist1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCastList2() {
    return SizedBox(
      height: 58.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller
              .movieDetailModelObj.value.castlist2ItemList.value.length,
          itemBuilder: (context, index) {
            Castlist2ItemModel model = controller
                .movieDetailModelObj.value.castlist2ItemList.value[index];
            return Castlist2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCinemaList() {
    return Padding(
      padding: EdgeInsets.only(right: 16.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 19.v,
            );
          },
          itemCount: controller
              .movieDetailModelObj.value.cinemalistItemList.value.length,
          itemBuilder: (context, index) {
            CinemalistItemModel model = controller
                .movieDetailModelObj.value.cinemalistItemList.value[index];
            return CinemalistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
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
}
