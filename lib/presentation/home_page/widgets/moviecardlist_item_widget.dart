import '../controller/home_controller.dart';
import '../models/moviecardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

// ignore: must_be_immutable
class MoviecardlistItemWidget extends StatelessWidget {
  MoviecardlistItemWidget(
    this.moviecardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MoviecardlistItemModel moviecardlistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 173.h,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: moviecardlistItemModelObj.avatarImage!.value,
                height: 244.v,
                width: 173.h,
                radius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
            SizedBox(height: 11.v),
            SizedBox(
              width: 168.h,
              child: Obx(
                () => Text(
                  moviecardlistItemModelObj.movieTitle!.value,
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
                  imagePath: ImageConstant.imgUpload,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Obx(
                    () => Text(
                      moviecardlistItemModelObj.genreText!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Obx(
                    () => Text(
                      moviecardlistItemModelObj.releaseDateText!.value,
                      style: CustomTextStyles.bodySmallGray100,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
