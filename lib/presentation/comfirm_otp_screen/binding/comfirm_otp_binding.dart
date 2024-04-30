import '../controller/comfirm_otp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ComfirmOtpScreen.
///
/// This class ensures that the ComfirmOtpController is created when the
/// ComfirmOtpScreen is first loaded.
class ComfirmOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComfirmOtpController());
  }
}
