import '../../../core/app_export.dart';
import 'castlist1_item_model.dart';
import 'castlist2_item_model.dart';
import 'cinemalist_item_model.dart';

/// This class defines the variables used in the [movie_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MovieDetailModel {
  Rx<List<Castlist1ItemModel>> castlist1ItemList = Rx([
    Castlist1ItemModel(
        actorImage: ImageConstant.imgEllipse4136x36.obs,
        actorName: "Anthony\nRusso".obs),
    Castlist1ItemModel(
        actorImage: ImageConstant.imgEllipse413.obs,
        actorName: "Joe\nRusso".obs)
  ]);

  Rx<List<Castlist2ItemModel>> castlist2ItemList = Rx([
    Castlist2ItemModel(
        actorImage: ImageConstant.imgEllipse414.obs,
        actorName: "Robert\nDowney Jr.".obs),
    Castlist2ItemModel(
        actorImage: ImageConstant.imgEllipse415.obs,
        actorName: "Chris\nHemsworth".obs),
    Castlist2ItemModel(
        actorImage: ImageConstant.imgEllipse416.obs,
        actorName: "Chris\nEvans".obs)
  ]);

  Rx<List<CinemalistItemModel>> cinemalistItemList = Rx([
    CinemalistItemModel(
        cinemaName: "Vincom Ocean Park CGV".obs,
        distance: "4.55 km".obs,
        address: "Da Ton, Gia Lam, Ha Noi".obs,
        imageClass: ImageConstant.imgFrame428.obs),
    CinemalistItemModel(
        cinemaName: "Aeon Mall CGV".obs,
        distance: "9.32 km".obs,
        address: "27 Co Linh, Long Bien, Ha Noi".obs,
        imageClass: ImageConstant.imgFrame428.obs),
    CinemalistItemModel(
        cinemaName: "Lotte Cinema Long Bien".obs,
        distance: "14.3 km".obs,
        address: "7-9 Nguyen Van Linh, Long Bien, Ha Noi".obs)
  ]);
}
