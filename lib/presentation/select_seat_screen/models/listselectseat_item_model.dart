import '../../../core/app_export.dart';

/// This class is used in the [listselectseat_item_widget] screen.
class ListselectseatItemModel {
  ListselectseatItemModel({
    this.time,
    this.id,
  }) {
    time = time ?? Rx("14:15");
    id = id ?? Rx("");
  }

  Rx<String>? time;

  Rx<String>? id;
}
