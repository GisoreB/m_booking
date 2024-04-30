import '../home_page/widgets/moviecardlist_item_widget.dart';
import '../home_page/widgets/newsarticlelist_item_widget.dart';
import '../home_page/widgets/slider_item_widget.dart';
import '../home_page/widgets/userprofilelist_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/moviecardlist_item_model.dart';
import 'models/newsarticlelist_item_model.dart';
import 'models/slider_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:m_booking/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:m_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:m_booking/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildPromoFrame(
                      comingSoonText: "lbl_now_playing".tr,
                      seeAllText: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildSlider(),
                  SizedBox(height: 15.v),
                  Obx(
                    () => SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex.value,
                        count: controller
                            .homeModelObj.value.sliderItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          activeDotColor: Color(0X1212121D),
                          dotHeight: 8.v,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildPromoFrame(
                      comingSoonText: "lbl_coming_soon".tr,
                      seeAllText: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildMovieCardList(),
                  SizedBox(height: 40.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildPromoFrame(
                      comingSoonText: "msg_promo_discount".tr,
                      seeAllText: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildPlayStack(),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildPromoFrame(
                      comingSoonText: "lbl_service".tr,
                      seeAllText: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildUserProfileList(),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildPromoFrame(
                      comingSoonText: "lbl_movie_news".tr,
                      seeAllText: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildNewsArticleList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitleTwo(
              text: "lbl_hi_angelina".tr,
              margin: EdgeInsets.only(right: 51.h),
            ),
            AppbarSubtitleOne(
              text: "lbl_welcome_back".tr,
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 36.adaptSize,
          width: 36.adaptSize,
          margin: EdgeInsets.fromLTRB(16.h, 8.v, 16.h, 11.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVuesaxBoldNotification,
                height: 36.adaptSize,
                width: 36.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.fromLTRB(22.h, 4.v, 6.h, 24.v),
                  decoration: BoxDecoration(
                    color: appTheme.lightGreenA700,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                    border: Border.all(
                      color: appTheme.black900,
                      width: 2.h,
                      strokeAlign: strokeAlignOutside,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSlider() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 524.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount: controller.homeModelObj.value.sliderItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          SliderItemModel model =
              controller.homeModelObj.value.sliderItemList.value[index];
          return SliderItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMovieCardList() {
    return SizedBox(
      height: 341.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount:
              controller.homeModelObj.value.moviecardlistItemList.value.length,
          itemBuilder: (context, index) {
            MoviecardlistItemModel model = controller
                .homeModelObj.value.moviecardlistItemList.value[index];
            return MoviecardlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayStack() {
    return SizedBox(
      height: 224.v,
      width: 398.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClipPathGroup,
            height: 224.v,
            width: 398.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 244.h,
                top: 15.v,
                right: 20.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPlay18x40,
                    height: 18.v,
                    width: 40.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 2.h),
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    height: 105.v,
                    width: 133.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "msg_movie_vouchers_free".tr,
                            style: CustomTextStyles.bodyMediumHelvetica,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 2.h,
                              bottom: 2.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_30".tr,
                                  style: CustomTextStyles.helveticaNeueGray100,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 8.v,
                                    bottom: 16.v,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Text(
                                          "lbl".tr,
                                          style: theme.textTheme.displayMedium,
                                        ),
                                        Text(
                                          "lbl_off".tr,
                                          style: CustomTextStyles
                                              .titleLargeHelveticaNeue,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
      height: 115.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 26.h,
            );
          },
          itemCount: controller
              .homeModelObj.value.userprofilelistItemList.value.length,
          itemBuilder: (context, index) {
            UserprofilelistItemModel model = controller
                .homeModelObj.value.userprofilelistItemList.value[index];
            return UserprofilelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewsArticleList() {
    return SizedBox(
      height: 192.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
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
              .homeModelObj.value.newsarticlelistItemList.value.length,
          itemBuilder: (context, index) {
            NewsarticlelistItemModel model = controller
                .homeModelObj.value.newsarticlelistItemList.value[index];
            return NewsarticlelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPromoFrame({
    required String comingSoonText,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          comingSoonText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.gray100,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 7.v,
          ),
          child: Text(
            seeAllText,
            style: CustomTextStyles.bodyMediumPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            left: 4.h,
            top: 5.v,
            bottom: 7.v,
          ),
        ),
      ],
    );
  }
}
