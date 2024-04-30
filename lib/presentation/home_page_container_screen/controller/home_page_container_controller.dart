import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/home_page_container_screen/models/home_page_container_model.dart';

/// A controller class for the HomePageContainerScreen.
///
/// This class manages the state of the HomePageContainerScreen, including the
/// current homePageContainerModelObj
class HomePageContainerController extends GetxController {
  Rx<HomePageContainerModel> homePageContainerModelObj =
      HomePageContainerModel().obs;
}
