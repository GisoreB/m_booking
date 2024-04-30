import '../controller/movie_detail_controller.dart';
import '../models/cinemalist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

// ignore: must_be_immutable
class CinemalistItemWidget extends StatelessWidget {
  CinemalistItemWidget(
    this.cinemalistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CinemalistItemModel cinemalistItemModelObj;

  var controller = Get.find<MovieDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  cinemalistItemModelObj.cinemaName!.value,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 8.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      cinemalistItemModelObj.distance!.value,
                      style: CustomTextStyles.bodySmallGray100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: SizedBox(
                      child: Divider(
                        indent: 8.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Obx(
                      () => Text(
                        cinemalistItemModelObj.address!.value,
                        style: CustomTextStyles.bodySmallGray100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 16.v,
            width: 32.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 28.v,
            ),
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: cinemalistItemModelObj.imageClass!.value,
                height: 11.v,
                width: 26.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
