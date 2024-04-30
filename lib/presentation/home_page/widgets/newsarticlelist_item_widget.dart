import '../controller/home_controller.dart';
import '../models/newsarticlelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

// ignore: must_be_immutable
class NewsarticlelistItemWidget extends StatelessWidget {
  NewsarticlelistItemWidget(
    this.newsarticlelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewsarticlelistItemModel newsarticlelistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 239.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: newsarticlelistItemModelObj.articleImage!.value,
              height: 135.v,
              width: 239.h,
              radius: BorderRadius.circular(
                16.h,
              ),
            ),
          ),
          SizedBox(height: 15.v),
          SizedBox(
            width: 219.h,
            child: Obx(
              () => Text(
                newsarticlelistItemModelObj.articleTitle!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium!.copyWith(
                  height: 1.25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
