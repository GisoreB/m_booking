import '../controller/movie_detail_controller.dart';
import '../models/castlist2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

// ignore: must_be_immutable
class Castlist2ItemWidget extends StatelessWidget {
  Castlist2ItemWidget(
    this.castlist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Castlist2ItemModel castlist2ItemModelObj;

  var controller = Get.find<MovieDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 150.h,
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: castlist2ItemModelObj.actorImage!.value,
              height: 36.adaptSize,
              width: 36.adaptSize,
              radius: BorderRadius.circular(
                18.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 4.v),
            ),
          ),
          Container(
            width: 72.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Obx(
              () => Text(
                castlist2ItemModelObj.actorName!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
