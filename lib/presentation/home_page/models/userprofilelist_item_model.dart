import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.userImage,
    this.userName,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse41);
    userName = userName ?? Rx("Retal");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? id;
}
