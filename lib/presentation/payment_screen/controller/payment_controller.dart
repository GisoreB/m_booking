import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/payment_screen/models/payment_model.dart';

/// A controller class for the PaymentScreen.
///
/// This class manages the state of the PaymentScreen, including the
/// current paymentModelObj
class PaymentController extends GetxController {
  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;
}
