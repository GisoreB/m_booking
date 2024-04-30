import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/coming_soon_tab_container_page/models/coming_soon_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ComingSoonTabContainerPage.
///
/// This class manages the state of the ComingSoonTabContainerPage, including the
/// current comingSoonTabContainerModelObj
class ComingSoonTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ComingSoonTabContainerController(this.comingSoonTabContainerModelObj);

  Rx<ComingSoonTabContainerModel> comingSoonTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
