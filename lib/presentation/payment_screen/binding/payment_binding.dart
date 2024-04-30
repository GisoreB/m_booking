import '../controller/payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentScreen.
///
/// This class ensures that the PaymentController is created when the
/// PaymentScreen is first loaded.
class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentController());
  }
}
