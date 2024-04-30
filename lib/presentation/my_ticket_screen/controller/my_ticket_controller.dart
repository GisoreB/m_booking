import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/my_ticket_screen/models/my_ticket_model.dart';

/// A controller class for the MyTicketScreen.
///
/// This class manages the state of the MyTicketScreen, including the
/// current myTicketModelObj
class MyTicketController extends GetxController {
  Rx<MyTicketModel> myTicketModelObj = MyTicketModel().obs;
}
