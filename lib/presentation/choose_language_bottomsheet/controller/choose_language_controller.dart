import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/choose_language_bottomsheet/models/choose_language_model.dart';

/// A controller class for the ChooseLanguageBottomsheet.
///
/// This class manages the state of the ChooseLanguageBottomsheet, including the
/// current chooseLanguageModelObj
class ChooseLanguageController extends GetxController {
  Rx<ChooseLanguageModel> chooseLanguageModelObj = ChooseLanguageModel().obs;
}
