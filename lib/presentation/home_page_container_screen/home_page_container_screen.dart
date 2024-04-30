import 'controller/home_page_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/coming_soon_tab_container_page/coming_soon_tab_container_page.dart';
import 'package:m_booking/presentation/home_page/home_page.dart';
import 'package:m_booking/presentation/profile_user_page/profile_user_page.dart';
import 'package:m_booking/presentation/ticket_page/ticket_page.dart';
import 'package:m_booking/widgets/custom_bottom_bar.dart';

class HomePageContainerScreen extends GetWidget<HomePageContainerController> {
  const HomePageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Ticket:
        return AppRoutes.ticketPage;
      case BottomBarEnum.Movie:
        return AppRoutes.comingSoonTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileUserPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.ticketPage:
        return TicketPage();
      case AppRoutes.comingSoonTabContainerPage:
        return ComingSoonTabContainerPage();
      case AppRoutes.profileUserPage:
        return ProfileUserPage();
      default:
        return DefaultWidget();
    }
  }
}
