import '../controller/select_seat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectSeatScreen.
///
/// This class ensures that the SelectSeatController is created when the
/// SelectSeatScreen is first loaded.
class SelectSeatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectSeatController());
  }
}
