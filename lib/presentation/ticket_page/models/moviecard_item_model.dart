import '../../../core/app_export.dart';

/// This class is used in the [moviecard_item_widget] screen.
class MoviecardItemModel {
  MoviecardItemModel({
    this.movieImage,
    this.movieTitle,
    this.showtimeText,
    this.cinemaName,
    this.id,
  }) {
    movieImage = movieImage ?? Rx(ImageConstant.imgRectangle39);
    movieTitle = movieTitle ?? Rx("Avengers: Infinity War");
    showtimeText = showtimeText ?? Rx("14h15’ • 16.12.2022");
    cinemaName = cinemaName ?? Rx("Vincom Ocean Park CGV");
    id = id ?? Rx("");
  }

  Rx<String>? movieImage;

  Rx<String>? movieTitle;

  Rx<String>? showtimeText;

  Rx<String>? cinemaName;

  Rx<String>? id;
}
