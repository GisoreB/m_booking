import '../../../core/app_export.dart';

/// This class is used in the [castlist1_item_widget] screen.
class Castlist1ItemModel {
  Castlist1ItemModel({
    this.actorImage,
    this.actorName,
    this.id,
  }) {
    actorImage = actorImage ?? Rx(ImageConstant.imgEllipse4136x36);
    actorName = actorName ?? Rx("Anthony\nRusso");
    id = id ?? Rx("");
  }

  Rx<String>? actorImage;

  Rx<String>? actorName;

  Rx<String>? id;
}
