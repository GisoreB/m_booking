import '../../../core/app_export.dart';

/// This class is used in the [cinemalist_item_widget] screen.
class CinemalistItemModel {
  CinemalistItemModel({
    this.cinemaName,
    this.distance,
    this.address,
    this.imageClass,
    this.id,
  }) {
    cinemaName = cinemaName ?? Rx("Vincom Ocean Park CGV");
    distance = distance ?? Rx("4.55 km");
    address = address ?? Rx("Da Ton, Gia Lam, Ha Noi");
    imageClass = imageClass ?? Rx(ImageConstant.imgFrame428);
    id = id ?? Rx("");
  }

  Rx<String>? cinemaName;

  Rx<String>? distance;

  Rx<String>? address;

  Rx<String>? imageClass;

  Rx<String>? id;
}
