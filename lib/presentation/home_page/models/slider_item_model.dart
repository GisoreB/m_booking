import '../../../core/app_export.dart';

/// This class is used in the [slider_item_widget] screen.
class SliderItemModel {
  SliderItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle45);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? id;
}
