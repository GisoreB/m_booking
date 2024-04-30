import '../controller/my_ticket_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyTicketScreen.
///
/// This class ensures that the MyTicketController is created when the
/// MyTicketScreen is first loaded.
class MyTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyTicketController());
  }
}
