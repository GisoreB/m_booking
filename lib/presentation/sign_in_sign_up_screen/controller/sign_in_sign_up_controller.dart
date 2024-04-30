import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/sign_in_sign_up_screen/models/sign_in_sign_up_model.dart';

/// A controller class for the SignInSignUpScreen.
///
/// This class manages the state of the SignInSignUpScreen, including the
/// current signInSignUpModelObj
class SignInSignUpController extends GetxController {
  Rx<SignInSignUpModel> signInSignUpModelObj = SignInSignUpModel().obs;
}
