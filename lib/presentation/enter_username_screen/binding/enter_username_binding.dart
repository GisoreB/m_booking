import '../controller/enter_username_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EnterUsernameScreen.
///
/// This class ensures that the EnterUsernameController is created when the
/// EnterUsernameScreen is first loaded.
class EnterUsernameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterUsernameController());
  }
}
