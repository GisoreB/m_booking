import '../controller/home_controller.dart';
import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomImageView(
          imagePath: sliderItemModelObj.image!.value,
          height: 440.v,
          width: 310.h,
          radius: BorderRadius.circular(
            16.h,
          ),
          margin: EdgeInsets.only(
            left: 261.h,
            bottom: 84.v,
          ),
        ),
      ),
    );
  }
}
