import 'package:m_booking/core/app_export.dart';
import 'package:m_booking/presentation/select_seat_screen/models/select_seat_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

/// A controller class for the SelectSeatScreen.
///
/// This class manages the state of the SelectSeatScreen, including the
/// current selectSeatModelObj
class SelectSeatController extends GetxController {
  Rx<SelectSeatModel> selectSeatModelObj = SelectSeatModel().obs;

  Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);

  Rx<bool> available = false.obs;

  Rx<DateTime> selectedDatesFromCalendar2 = DateTime.now().obs;
}
