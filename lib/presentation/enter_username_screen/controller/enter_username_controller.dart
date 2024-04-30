import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/enter_username_screen/models/enter_username_model.dart';

/// A controller class for the EnterUsernameScreen.
///
/// This class manages the state of the EnterUsernameScreen, including the
/// current enterUsernameModelObj
class EnterUsernameController extends GetxController {
  Rx<EnterUsernameModel> enterUsernameModelObj = EnterUsernameModel().obs;
}
