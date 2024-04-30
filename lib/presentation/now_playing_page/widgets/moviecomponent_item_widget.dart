import '../controller/now_playing_controller.dart';
import '../models/moviecomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

// ignore: must_be_immutable
class MoviecomponentItemWidget extends StatelessWidget {
  MoviecomponentItemWidget(
    this.moviecomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MoviecomponentItemModel moviecomponentItemModelObj;

  var controller = Get.find<NowPlayingController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: moviecomponentItemModelObj.movieImage!.value,
              height: 267.v,
              width: 191.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: 168.h,
            child: Obx(
              () => Text(
                moviecomponentItemModelObj.movieTitle!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumPrimary.copyWith(
                  height: 1.25,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: moviecomponentItemModelObj.ratingImage!.value,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    moviecomponentItemModelObj.ratingText!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClockOnerror,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    moviecomponentItemModelObj.durationText!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUploadOnerror,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    moviecomponentItemModelObj.genreText!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
