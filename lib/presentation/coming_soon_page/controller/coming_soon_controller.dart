import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/coming_soon_page/models/coming_soon_model.dart';

/// A controller class for the ComingSoonPage.
///
/// This class manages the state of the ComingSoonPage, including the
/// current comingSoonModelObj
class ComingSoonController extends GetxController {
  ComingSoonController(this.comingSoonModelObj);

  Rx<ComingSoonModel> comingSoonModelObj;
}
