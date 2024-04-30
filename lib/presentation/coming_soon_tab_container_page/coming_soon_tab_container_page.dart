import 'controller/coming_soon_tab_container_controller.dart';
import 'models/coming_soon_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/coming_soon_page/coming_soon_page.dart';
import 'package:m_booking/presentation/now_playing_page/now_playing_page.dart';

class ComingSoonTabContainerPage extends StatelessWidget {
  ComingSoonTabContainerPage({Key? key})
      : super(
          key: key,
        );

  ComingSoonTabContainerController controller = Get.put(
      ComingSoonTabContainerController(ComingSoonTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: Column(
            children: [
              SizedBox(height: 36.v),
              _buildTabview(),
              Expanded(
                child: SizedBox(
                  height: 699.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      NowPlayingPage(),
                      ComingSoonPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 56.v,
      width: 398.h,
      decoration: BoxDecoration(
        color: appTheme.gray90001,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray40001,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w700,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_now_playing".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_coming_soon".tr,
            ),
          ),
        ],
      ),
    );
  }
}
