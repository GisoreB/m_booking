import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/profile_user_page/models/profile_user_model.dart';

/// A controller class for the ProfileUserPage.
///
/// This class manages the state of the ProfileUserPage, including the
/// current profileUserModelObj
class ProfileUserController extends GetxController {
  ProfileUserController(this.profileUserModelObj);

  Rx<ProfileUserModel> profileUserModelObj;

  Rx<bool> isSelectedSwitch = false.obs;
}
