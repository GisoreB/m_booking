import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/ticket_page/models/ticket_model.dart';

/// A controller class for the TicketPage.
///
/// This class manages the state of the TicketPage, including the
/// current ticketModelObj
class TicketController extends GetxController {
  TicketController(this.ticketModelObj);

  Rx<TicketModel> ticketModelObj;
}
