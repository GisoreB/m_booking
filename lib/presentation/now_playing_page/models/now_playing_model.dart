import '../../../core/app_export.dart';
import 'moviecomponent_item_model.dart';

/// This class defines the variables used in the [now_playing_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NowPlayingModel {
  Rx<List<MoviecomponentItemModel>> moviecomponentItemList = Rx([
    MoviecomponentItemModel(
        movieImage: ImageConstant.imgRectangle44267x191.obs,
        movieTitle: "Shang chi: Legend of the Ten Rings".obs,
        ratingImage: ImageConstant.imgStar71.obs,
        ratingText: "4.0 (982)".obs,
        durationText: "2 hour 5 minutes".obs,
        genreText: "Action, Sci-fi".obs),
    MoviecomponentItemModel(
        movieImage: ImageConstant.imgRectangle442.obs,
        movieTitle: "Batman v Superman:\nDawn of Justice".obs,
        ratingImage: ImageConstant.imgStar72.obs,
        ratingText: "4.0 (982)".obs,
        durationText: "2 hour 10 minutes".obs,
        genreText: "Action, Sci-fi".obs),
    MoviecomponentItemModel(
        movieImage: ImageConstant.imgRectangle443.obs,
        movieTitle: "Avengers: Infinity War".obs,
        ratingImage: ImageConstant.imgStar73.obs,
        ratingText: "4.8 (1.222)".obs,
        durationText: "2 hours 29 minutes".obs,
        genreText: "Action, Sci-fi".obs),
    MoviecomponentItemModel(
        movieImage: ImageConstant.imgRectangle444.obs,
        movieTitle: "Guardians Of The Galaxy".obs,
        ratingImage: ImageConstant.imgStar74.obs,
        ratingText: "4.0 (901)".obs,
        durationText: "2 hours 10 minutes".obs,
        genreText: "Action, Sci-fi".obs)
  ]);
}
