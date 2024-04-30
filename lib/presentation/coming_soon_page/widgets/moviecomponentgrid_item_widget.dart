import '../controller/coming_soon_controller.dart';
import '../models/moviecomponentgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

// ignore: must_be_immutable
class MoviecomponentgridItemWidget extends StatelessWidget {
  MoviecomponentgridItemWidget(
    this.moviecomponentgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MoviecomponentgridItemModel moviecomponentgridItemModelObj;

  var controller = Get.find<ComingSoonController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: moviecomponentgridItemModelObj.avatarImage!.value,
              height: 267.v,
              width: 191.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: 168.h,
            child: Obx(
              () => Text(
                moviecomponentgridItemModelObj.movieTitle!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumPrimary.copyWith(
                  height: 1.25,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCalendarOnerror,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    moviecomponentgridItemModelObj.releaseDate!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6.v),
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
                    moviecomponentgridItemModelObj.genreText!.value,
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
