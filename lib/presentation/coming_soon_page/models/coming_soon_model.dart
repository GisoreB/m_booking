import '../../../core/app_export.dart';
import 'moviecomponentgrid_item_model.dart';

/// This class defines the variables used in the [coming_soon_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ComingSoonModel {
  Rx<List<MoviecomponentgridItemModel>> moviecomponentgridItemList = Rx([
    MoviecomponentgridItemModel(
        avatarImage: ImageConstant.imgRectangle445.obs,
        movieTitle: "Avatar 2: The Way Of Water".obs,
        releaseDate: "20.12.2022".obs,
        genreText: "Adventure, Sci-fi".obs),
    MoviecomponentgridItemModel(
        avatarImage: ImageConstant.imgRectangle446.obs,
        movieTitle: "Ant Man Wasp: Quantumania".obs,
        releaseDate: "25.12.2022".obs,
        genreText: "Adventure, Sci-fi".obs),
    MoviecomponentgridItemModel(
        avatarImage: ImageConstant.imgRectangle447.obs,
        movieTitle: "Shazam: Fury of the Gods".obs,
        releaseDate: "17.03.2023".obs,
        genreText: "Action, Sci-fi".obs),
    MoviecomponentgridItemModel(
        avatarImage: ImageConstant.imgRectangle448.obs,
        movieTitle: "Fox puss in Boots: The last Wish".obs,
        releaseDate: "27.12.2022".obs,
        genreText: "Comdy, animation, adventure".obs)
  ]);
}
