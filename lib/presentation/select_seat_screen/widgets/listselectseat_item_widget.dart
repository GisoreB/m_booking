import '../controller/select_seat_controller.dart';
import '../models/listselectseat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';

// ignore: must_be_immutable
class ListselectseatItemWidget extends StatelessWidget {
  ListselectseatItemWidget(
    this.listselectseatItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListselectseatItemModel listselectseatItemModelObj;

  var controller = Get.find<SelectSeatController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: Opacity(
        opacity: 0.4,
        child: Container(
          width: 90.h,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray90001.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder16,
          ),
          child: Obx(
            () => Text(
              listselectseatItemModelObj.time!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
      ),
    );
  }
}
