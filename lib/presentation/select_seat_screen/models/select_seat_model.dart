import '../../../core/app_export.dart';
import 'listselectseat_item_model.dart';

/// This class defines the variables used in the [select_seat_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectSeatModel {
  Rx<List<ListselectseatItemModel>> listselectseatItemList = Rx([
    ListselectseatItemModel(time: "14:15".obs),
    ListselectseatItemModel(time: "8:30".obs),
    ListselectseatItemModel(time: "11:05".obs),
    ListselectseatItemModel(time: "14:15".obs),
    ListselectseatItemModel(time: "16:30".obs),
    ListselectseatItemModel(time: "20:10".obs),
    ListselectseatItemModel(time: "14:15".obs)
  ]);
}
