import '../../../core/app_export.dart';

/// This class is used in the [castlist2_item_widget] screen.
class Castlist2ItemModel {
  Castlist2ItemModel({
    this.actorImage,
    this.actorName,
    this.id,
  }) {
    actorImage = actorImage ?? Rx(ImageConstant.imgEllipse414);
    actorName = actorName ?? Rx("Robert\nDowney Jr.");
    id = id ?? Rx("");
  }

  Rx<String>? actorImage;

  Rx<String>? actorName;

  Rx<String>? id;
}
