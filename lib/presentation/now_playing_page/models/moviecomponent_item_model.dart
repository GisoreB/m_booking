import '../../../core/app_export.dart';

/// This class is used in the [moviecomponent_item_widget] screen.
class MoviecomponentItemModel {
  MoviecomponentItemModel({
    this.movieImage,
    this.movieTitle,
    this.ratingImage,
    this.ratingText,
    this.durationText,
    this.genreText,
    this.id,
  }) {
    movieImage = movieImage ?? Rx(ImageConstant.imgRectangle44267x191);
    movieTitle = movieTitle ?? Rx("Shang chi: Legend of the Ten Rings");
    ratingImage = ratingImage ?? Rx(ImageConstant.imgStar71);
    ratingText = ratingText ?? Rx("4.0 (982)");
    durationText = durationText ?? Rx("2 hour 5 minutes");
    genreText = genreText ?? Rx("Action, Sci-fi");
    id = id ?? Rx("");
  }

  Rx<String>? movieImage;

  Rx<String>? movieTitle;

  Rx<String>? ratingImage;

  Rx<String>? ratingText;

  Rx<String>? durationText;

  Rx<String>? genreText;

  Rx<String>? id;
}
