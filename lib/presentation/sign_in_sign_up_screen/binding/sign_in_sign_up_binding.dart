import '../controller/sign_in_sign_up_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInSignUpScreen.
///
/// This class ensures that the SignInSignUpController is created when the
/// SignInSignUpScreen is first loaded.
class SignInSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInSignUpController());
  }
}
