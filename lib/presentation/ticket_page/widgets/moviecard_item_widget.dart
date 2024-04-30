import '../controller/ticket_controller.dart';
import '../models/moviecard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

// ignore: must_be_immutable
class MoviecardItemWidget extends StatelessWidget {
  MoviecardItemWidget(
    this.moviecardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MoviecardItemModel moviecardItemModelObj;

  var controller = Get.find<TicketController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: moviecardItemModelObj.movieImage!.value,
              height: 138.v,
              width: 99.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 20.v,
              bottom: 36.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    moviecardItemModelObj.movieTitle!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 13.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClockGray100,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          moviecardItemModelObj.showtimeText!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedinGray100,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          moviecardItemModelObj.cinemaName!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
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
}
